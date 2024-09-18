import NodeCache from "node-cache";

const cache = new NodeCache();

/**
 * Révoque un token avec une durée de vie spécifiée
 * @param {string} token - Le token à révoquer
 * @param {number} ttl - Le temps de vie du token en secondes (1 heure par défaut)
 */

export const revokeToken =  (token, ttl= 3600) => {// TTL de 1 heure par défaut
 cache.set(token, true, ttl);    
};


/**
 * Vérifie si un token a été révoqué
 * @param {string} token - Le token à vérifier
 * @returns {boolean} - Vrai si le token est révoqué, faux sinon
 */

export const isTokenRevoked = (token) => {
    return cache.get(token) === true;
};