import crypto from 'crypto';

// Paramètres de l'algorithme scrypt
const N = 16384; // Coût du CPU
const r = 8; // Facteur de blocage
const p = 1; // Parallélisme
const keylen = 32; // Longueur de la clé dérivée en octets

/**
 * Fonction pour hacher un mot de passe
 * @param {string} password - Le mot de passe à hacher
 * @returns {Promise<string>} - Le mot de passe haché
 */
export const hashPassword = (password) => {
    return new Promise((resolve, reject) => {
        // Génération d'un sel aléatoire de 16 octets avec la méthode crypto.randomBytes
        const salt = crypto.randomBytes(16).toString('hex');
        
        // Utilisation de l'algorithme scrypt pour dériver une clé à partir du mot de passe et du sel
        crypto.scrypt(password, salt, keylen, { N, r, p }, (err, derivedKey) => {
            if (err) reject(err);
            
            // Résolution de la promesse avec le sel et la clé dérivée concaténés
            // Le sel est unique pour chaque mot de passe, donc la clé dérivée sera différente même pour des mots de passe identiques
            resolve(`${salt}:${derivedKey.toString('hex')}`);
        });
    });
};

/**
 * Fonction pour vérifier un mot de passe
 * @param {string} password - Le mot de passe à vérifier
 * @param {string} hashedPassword - Le mot de passe haché pour comparaison
 * @returns {Promise<boolean>} - Vrai si le mot de passe est valide, faux sinon
 */
export const verifyPassword = (password, hashedPassword) => {
    return new Promise((resolve, reject) => {
        // Séparation du sel et de la clé dérivée stockée
        const [salt, key] = hashedPassword.split(':');
        
        // Utilisation de l'algorithme scrypt pour dériver une clé à partir du mot de passe et du sel
        // Le même sel est utilisé pour dériver la clé, garantissant que la clé dérivée sera la même si le mot de passe est correct
        crypto.scrypt(password, salt, keylen, { N, r, p }, (err, derivedKey) => {
            if (err) reject(err);
            
            // Comparaison de la clé dérivée avec la clé stockée
            resolve(derivedKey.toString('hex') === key);
        });
    });
};
