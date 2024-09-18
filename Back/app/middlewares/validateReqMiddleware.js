import { validationResult } from "express-validator";

/**
 * Middleware pour valider les requêtes
 * @param {Request} req - La requête HTTP
 * @param {Response} res - La réponse HTTP
 * @param {Function} next - Fonction pour passer au middleware suivant
 */

export const validateRequest = (req, res, next) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        return res.status(400).json({
            status: "error",
            message: "Données de requête invalides",
            errors: errors.array(),
        });
    }
    next();
};