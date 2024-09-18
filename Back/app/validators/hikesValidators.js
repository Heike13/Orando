import { body } from 'express-validator';

/**
 * Validateur pour les routes liées aux randonnées.
 * Vérifie que les champs requis pour une randonnée sont valides.
 */
export const hikeValidators = [
  body('title')
    .exists().withMessage('Le titre est requis.')
    .isString().withMessage('Le titre doit être une chaîne de caractères.'),
  body('description')
    .exists().withMessage('La description est requise.')
    .isString().withMessage('La description doit être une chaîne de caractères.'),
  body('difficulty')
    .exists().withMessage('La difficulté est requise.')
    .isInt({ min: 1, max: 5 }).withMessage('La difficulté doit être un entier entre 1 et 5.'),
  body('time')
    .exists().withMessage('Le temps est requis.')
    .isFloat({ min: 0 }).withMessage('Le temps doit être un nombre positif.'),
  body('distance')
    .exists().withMessage('La distance est requise.')
    .isFloat({ min: 0 }).withMessage('La distance doit être un nombre positif.'),
  body('localisation')
    .exists().withMessage('La localisation est requise.')
    .isString().withMessage('La localisation doit être une chaîne de caractères.'),
];
