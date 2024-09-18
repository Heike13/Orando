import { verifyToken, verifyRefreshToken, generateToken, generateRefreshToken } from '../utils/jwtUtils.js';
import { usersDataMappers } from '../dataMappers/index.dataMappers.js';
import { isTokenRevoked, revokeToken } from '../utils/node-Cache.js';

/**
 * Middleware pour authentifier les requêtes JWT
 * ajoute l'id de l'utilisateur dans la requête si le token est valide
 * 
 * @param {Request} req - La requête HTTP
 * @param {Response} res - La réponse HTTP
 * @param {Function} next - Fonction pour passer au middleware suivant
 */

export const authenticateJWT = async (req, res, next) => {
    const authHeader = req.headers['authorization'];
    const refreshToken = req.cookies.refreshToken;

    if (!authHeader) {
        return res.status(401).json({ error: 'Token manquant' });
    }

    const token = authHeader.split(' ')[1];

    try {
        if (await isTokenRevoked(token)) {
            return res.status(403).json({ error: 'Token révoqué' });
        }

        const decoded = verifyToken(token);
        req.user = { id: decoded.userId }; 
        next();
    } catch (err) {
        // Le JWT est expiré ou invalide
        if (err.name === 'TokenExpiredError' && refreshToken) {
            try {
                const decodedRefreshToken = verifyRefreshToken(refreshToken);
                const user = await usersDataMappers.findById(decodedRefreshToken.userId);

                if (!user) {
                    return res.status(401).json({ error: 'Utilisateur non trouvé.' });
                }

                const ip = req.ip;
                const userAgent = req.headers['user-agent'];
                const newToken = generateToken(user, ip, userAgent);
                const newRefreshToken = generateRefreshToken(user);

                res.cookie('refreshToken', newRefreshToken, {
                    httpOnly: true,
                    secure: process.env.NODE_ENV === 'production',
                    sameSite: 'Strict',
                    maxAge: 7 * 24 * 60 * 60 * 1000 // 7 jours
                });

                res.setHeader('Authorization', `Bearer ${newToken}`);
                req.user = { id: user.id };
                next();
            } catch (refreshErr) {
                return res.status(403).json({ error: 'Refresh token invalide' });
            }
        } else {
            next(err);
        }
    }
};