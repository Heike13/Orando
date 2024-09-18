import pool from "../config/clientPg.js";

class coreDataMappers {
  constructor(tableName) {
    this.tableName = tableName;
  }

  /**
   * Retourne tous les éléments de la table
   * @returns {Array} - Liste des éléments de la table
   */
  async findAll() {
    const query = `SELECT * FROM ${this.tableName}`;
    const result = await pool.query(query);
    return result.rows;
  }

  /**
   * Retourne un élément de la table par son id
   * @param {number} id - ID de l'élément
   * @returns {Object} - Détails de l'élément de la table
   */

  async findById(id) {
    const query = `SELECT * FROM ${this.tableName} WHERE id = $1`;
    const values = [id];
    const result = await pool.query(query, values);
    return result.rows[0];
  }

  /**
   * Permets de supprimer un élément de la table par son id
   * @param {number} id - ID de l'élément
   * @returns {Boolean} - Retourne true si l'élément a été supprimé
   */
  async deleteById(id) {
    const query = `DELETE FROM ${this.tableName} WHERE id = $1 RETURNING *`;
    const values = [id];
    const result = await pool.query(query, values);
    return result.rowCount > 0;
  }
}

export default coreDataMappers;
