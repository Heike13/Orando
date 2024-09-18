import { body, validationResult } from "express-validator";

/**
 * Middleware pour valider les champs de la requête de demande de réinitialisation du mot de passe.
 * @module forgotPasswordValidator
 */

export const forgotPasswordValidator = [
  body("email")
    .exists()
    .withMessage("L'email est requis.")
    .isEmail()
    .withMessage("L'email doit être valide."),

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
  },
];
