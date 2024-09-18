import { hikesDataMappers } from "../dataMappers/index.dataMappers.js";


/**
 * Récupère toutes les randonnées
 * @param {Request} req - La requête HTTP
 * @param {Response} res - La réponse HTTP
 * @param {Function} next - Fonction pour passer au middleware suivant
 */

export const getAllHikes = async (req, res, next) => {
  try {
    const hikes = await hikesDataMappers.getAllHikes();

    return res.status(200).json(hikes);
  } catch (error) {
    next(error);
  }
};

/**
 * Récupère toutes les randonnées avec pagination, tri et ordre
 * @param {Request} req - La requête HTTP
 * @param {Response} res - La réponse HTTP
 * @param {Function} next - Fonction pour passer au middleware suivant
 */

export const getAllHikesPages = async (req, res, next) => {
  try {
    // Récupere les paramètres de la requête
    const { page = 1 } = req.query;

    // Appel le dataMapper avec les paramètres de pagination, tri et ordre
    const hikes = await hikesDataMappers.getAllHikesPages(page);

    return res.status(200).json(hikes);
  } catch (error) {
    next(error);
  }
};

/**
 * Récupère une randonnée par son ID
 * @param {Request} req - La requête HTTP
 * @param {Response} res - La réponse HTTP
 * @param {Function} next - Fonction pour passer au middleware suivant
 */

export const getHikeById = async (req, res, next) => {
  try {
    const { id } = req.params;

    const hike = await hikesDataMappers.getHikeById(id);
    if (!hike) {
      const error = new Error("Randonnée non trouvée");
      error.statusCode = 404;
      throw error;
    }
    return res.status(200).json(hike);
  } catch (error) {
    next(error);
  }
};

/**
 * Récupère 3 randonnées de manière aléatoire
 * @param {Request} req - La requête HTTP
 * @param {Response} res - La réponse HTTP
 * @param {Function} next - Fonction pour passer au middleware suivant
 */

export const getRandomHikes = async (req, res, next) => {
  try {
    const hikes = await hikesDataMappers.getRandomHikes();
    return res.status(200).json(hikes);
  } catch (error) {
    next(error);
  }
};
