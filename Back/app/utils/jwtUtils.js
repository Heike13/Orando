import jwt from 'jsonwebtoken';

const secretKey = process.env.JWT_SECRET;
const refreshSecretKey = process.env.JWT_REFRESH_SECRET;

/**
 * Fonction pour générer un JWT
 * @param {Object} user - L'utilisateur pour lequel générer le token
 * @param {string} ip - L'adresse IP de l'utilisateur
 * @param {string} userAgent - L'agent utilisateur
 * @returns {string} - Le token JWT généré
 */
export const generateToken = (user, ip, userAgent) => {
    return jwt.sign(
        { userId: user.id, email: user.email, ip, userAgent },
        secretKey,
        { expiresIn: '1h' } // le token expirera dans 1 heure
    );
};
/**
 * Fonction pour vérifier un JWT
 * @param {string} token - Le token à vérifier
 * @returns {Object} - Les données du token décodé
 * @throws {Error} - Si le token est invalide
 */
export const verifyToken = (token) => {
    try {
        return jwt.verify(token, secretKey);
    } catch (error) {
        throw new Error('Token invalide');
    }
};


/**
 * Fonction pour générer un refresh token
 * @param {Object} user - L'utilisateur pour lequel générer le refresh token
 * @returns {string} - Le refresh token généré
 */
export const generateRefreshToken = (user) => {
    return jwt.sign(
        { userId: user.id, email: user.email },
        refreshSecretKey,
        { expiresIn: '7d' } // le refresh token expirera dans 7 jours
    );
};

/**
 * Fonction pour vérifier un refresh token
 * @param {string} token - Le token à vérifier
 * @returns {Object} - Les données du refresh token décodé
 * @throws {Error} - Si le refresh token est invalide
 */
export const verifyRefreshToken = (token) => {
    try {
        return jwt.verify(token, refreshSecretKey);
    } catch (error) {
        throw new Error('Refresh token invalide');
    }
};
