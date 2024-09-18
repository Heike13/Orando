import { body, validationResult } from 'express-validator';
import { usersDataMappers } from '../dataMappers/index.dataMappers.js';
import { verifyPassword } from '../utils/passwordUtils.js';
import jwt from 'jsonwebtoken';

const secretKey = process.env.JWT_SECRET;

/**
 * Middleware pour valider les champs de la requête de réinitialisation du mot de passe.
 * @module resetPasswordValidator
 */

export const resetPasswordValidator = [
    body('token')
        .exists().withMessage('Le token de réinitialisation est requis.')
        .isString().withMessage('Le token doit être une chaîne de caractères.'),
    body('newPassword')
        .exists().withMessage('Le nouveau mot de passe est requis.')
        .isLength({ min: 8 }).withMessage('Le mot de passe doit contenir au moins 8 caractères.')
        .matches(/[A-Z]/).withMessage('Le mot de passe doit contenir au moins une lettre majuscule.')
        .matches(/[a-z]/).withMessage('Le mot de passe doit contenir au moins une lettre minuscule.')
        .matches(/[0-9]/).withMessage('Le mot de passe doit contenir au moins un chiffre.')
        .matches(/[^A-Za-z0-9]/).withMessage('Le mot de passe doit contenir au moins un caractère spécial.')
        .custom(async (newPassword, { req }) => {
            const { token } = req.body;
            let decoded;

            try {
                decoded = jwt.verify(token, secretKey);
            } catch (err) {
                return Promise.reject('Token de réinitialisation invalide ou expiré.');
            }

            const user = await usersDataMappers.findById(decoded.userId);

            if (!user) {
                return Promise.reject('Utilisateur non trouvé.');
            }

            const isSamePassword = await verifyPassword(newPassword, user.password);
            if (isSamePassword) {
                return Promise.reject('Le nouveau mot de passe ne peut pas être identique à l\'ancien mot de passe.');
            }

            req.user = user;  
        }),

    /**
     * Middleware pour gérer les erreurs de validation.
     * @param {Request} req - La requête HTTP
     * @param {Response} res - La réponse HTTP
     * @param {Function} next - La fonction middleware suivante
     * @returns {Response|undefined}
     */

    (req, res, next) => {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return res.status(400).json({
                status: "error",
                message: "Données de requête invalides",
                errors: errors.array(),
            });
        }
        next();
    }
];
