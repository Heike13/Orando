import xss from 'xss';

/**
 * Middleware pour nettoyer les entrées de requêtes.
 * Utilise la bibliothèque xss pour empêcher les attaques XSS en nettoyant les
 * données contenues dans req.body, req.query, et req.params.
 *
 * @param {Object} req - L'objet de requête Express.
 * @param {Object} res - L'objet de réponse Express.
 * @param {Function} next - La fonction next() pour passer au middleware suivant.
 */

const xssMiddleware = (req, res, next) => {
    if (req.body) req.body = JSON.parse(xss(JSON.stringify(req.body)));
    if (req.query) req.query = JSON.parse(xss(JSON.stringify(req.query)));
    if (req.params) req.params = JSON.parse(xss(JSON.stringify(req.params)));
    next();
  };
  
  export default xssMiddleware;