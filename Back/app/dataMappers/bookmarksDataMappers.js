import pool from "../config/clientPg.js";
import coreDataMappers from "./coreDataMappers.js";

class bookmarksDataMappers extends coreDataMappers {
  constructor() {
    super("users_has_hikes");
  }

  /**
   * Route pour récupérer la liste des randonnées favorites d'un utilisateur
   * @param {number} userId - ID de l'utilisateur
   * @returns {Array} - Liste des randonnées favorites
   */
  async getBookmark(userId) {
    // Je ne fais pas de SELECT * car je ne veux pas l'erreur que provoque le champ GPS dans la console
    const query = `
      SELECT 
      hikes.id, hikes.slug,
            hikes.title,
            hikes.description,
            hikes.pictures,
            hikes.difficulty,
            hikes.time,
            hikes.localisation
      FROM hikes
      WHERE id IN (
        SELECT hikes_id
        FROM users_has_hikes
        WHERE users_id = $1
      );
    `;
    const values = [userId];
    const result = await pool.query(query, values);
    // Retourne les lignes du résultat sans exception (car on attend plusieurs éléments)
    return result.rows;
  }

  /**
   * Add a hike to the user's favorites and return the hike added with details
   * 
   * @param {number} userId - users ID
   * @param {number} hikeId - hikes ID
   * @returns {Object} - hike added with details
   */
  async addBookmark(userId, hikeId) {
    const query = `
    WITH inserted AS (
      INSERT INTO users_has_hikes (users_id, hikes_id)
      VALUES ($1, $2)
      ON CONFLICT (users_id, hikes_id) DO NOTHING
      RETURNING hikes_id
    )
    SELECT 
      h.id, h.slug, h.title, h.description, h.pictures, h.difficulty, h.distance, h.localisation
    FROM inserted
    JOIN hikes h ON h.id = inserted.hikes_id;
  `;
    const values = [userId, hikeId];
    const result = await pool.query(query, values);
    // Return the first row of the result (because we expect only one element)
    return result.rows[0];
  }

  /**
   * Delete a hike from the user's favorites
   * 
   * @param {number} userId - users ID
   * @param {number} hikeId - hikes ID
   * @returns {boolean} - true if a row has been deleted
   */
  async removeBookmark(userId, hikeId) {
    const query = `
      DELETE FROM users_has_hikes
      WHERE users_id = $1 AND hikes_id = $2
  `;
    const values = [userId, hikeId];
    const result = await pool.query(query, values);
    // Return true if a row has been deleted (because there will be a row deleted)
    return result.rowCount > 0;
  }
}

export default new bookmarksDataMappers();
