import { hashPassword } from '../utils/passwordUtils.js';

/**
 * Middleware pour hacher le mot de passe de l'utilisateur
 * @param {Request} req - La requête HTTP
 * @param {Response} res - La réponse HTTP
 * @param {Function} next - Fonction pour passer au middleware suivant
 */

export const hashPasswordMiddleware = async (req, res, next) => {
    const { password } = req.body;
    if (!password) {
        return res.status(400).json({ error: "Besoin d'un mot de passe" });
    }

    try {
        const hashedPassword = await hashPassword(password);
        req.body.hashedPassword = hashedPassword;
        next();
    } catch (error) {
        next(error);
    }
};
