
/**
 * Middleware de gestion des erreurs
 * @param {Error} err - L'erreur générée
 * @param {Request} req - La requête HTTP
 * @param {Response} res - La réponse HTTP
 * @param {Function} next - Fonction pour passer au middleware suivant
 */

export const errorHandler = (err, req, res, next) => {
  console.error(err.stack);  // Loguer l'erreur pour les développeurs

  const statusCode = err.statusCode || 500;
  const message = err.message || 'Erreur interne du serveur';

  // En production, éviter d'envoyer la pile d'erreurs au client
  if (process.env.NODE_ENV === 'production') {
    return res.status(statusCode).json({
      status: 'error',
      message: message,
    });
  } else {
    // En développement, inclure la pile d'erreurs
    return res.status(statusCode).json({
      status: 'error',
      message: message,
      stack: err.stack,
    });
  }
};