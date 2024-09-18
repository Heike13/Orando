
import coreDataMappers from "./coreDataMappers.js";
import pool from "../config/clientPg.js";

class usersDataMappers extends coreDataMappers {
  constructor() {
    super("users");
  }

  /**
   * Création d'un compte utilisateur
   * @param {string} nickname - Pseudo de l'utilisateur
   * @param {string} localisation - Département de l'utilisateur
   * @param {string} email - Email de l'utilisateur soumis à un DOMAIN
   * @param {string} hashedPassword - Mot de passe de l'utilisateur haché
   * @returns {Object} - Détails de la relation création d'utilisateur
   */
  async createUser(nickname, localisation, email, hashedPassword) {
    const query = `INSERT INTO users (nickname, localisation, email, password)
    VALUES ($1, $2, $3, $4) 
    RETURNING id, nickname, localisation, email, password, created_at, updated_at`;

    const values = [nickname, localisation, email, hashedPassword];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

    /**
   * Mise à jour d'un compte utilisateur
   * @param {number} id - ID de l'utilisateur
   * @param {Object} fields - Champs à mettre à jour
   * @returns {Object} - Détails de la relation création d'utilisateur
   */
  async updateUser(id, fields) {
    const updates = [];
    const values = [id];

    Object.keys(fields).forEach((field, index) => {
      values.push(fields[field]);
      updates.push(`"${field}" = $${index + 2}`);
    });

    const query = `
      UPDATE users
      SET ${updates.join(', ')}, updated_at = NOW()
      WHERE id = $1
      RETURNING id, nickname, localisation, email, password, created_at, updated_at
    `;

    const result = await pool.query(query, values);
    return result.rows[0];
  }
   /**
   * Obtenir un compte utilisateur par son email
   * @param {string} email - Email de l'utilisateur
   * @returns {Object} - Détails du compte de l'utilisateur
   */
  async getUserByEmail(email) {
    const query = `SELECT * FROM users WHERE email =$1`;
    const values = [email];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  /**
   * Obtenir un compte utilisateur par son pseudo
   * @param {string} nickname - Pseudo de l'utilisateur
   * @returns {Object} - Détails du compte de l'utilisateur
   */
  async getUserByNickname(nickname) {
    const query = `SELECT * FROM users WHERE nickname =$1`;
    const values = [nickname];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  /**
   * Met à jour le mot de passe haché d'un utilisateur
   * @param {number} userId - ID de l'utilisateur
   * @param {string} hashedPassword - Mot de passe haché
   */
  async updatePassword(userId, hashedPassword) {
    const query = `UPDATE users
                   SET password = $1,
                       updated_at = NOW()
                   WHERE id = $2`;

    const values = [hashedPassword, userId];
    await pool.query(query, values);
  }

  /**
   * Vérifie si l'email de l'utilisateur a été vérifié
   * @param {number} userId - ID de l'utilisateur
   */
  async verifyUserEmail(userId) {
    const query = `
        UPDATE "users"
        SET "email_verified" = true
        WHERE id = $1
    `;
    const values = [userId];
    await pool.query(query, values);
  }
  /**
   * Supprime un utilisateur et ses bookmarks associés
   * @param {number} userId - ID de l'utilisateur à supprimer
   * @returns {boolean} - Retourne true si l'utilisateur a été supprimé
   */
  async deleteUserAndDependencies(userId) {
    const query = `
      WITH deleted_dependencies AS (
        DELETE FROM users_has_hikes
        WHERE users_id = $1
      )
      DELETE FROM users
      WHERE id = $1
      RETURNING *;
    `;
    const values = [userId];
    const result = await pool.query(query, values);
    return result.rowCount > 0;
  }
}

export default new usersDataMappers();
