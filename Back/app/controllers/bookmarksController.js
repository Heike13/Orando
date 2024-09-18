import { bookmarksDataMappers } from "../dataMappers/index.dataMappers.js";
import { validationResult } from "express-validator";

/**
 * Add a hike to the user's favorites and return the hike added with details
 * 
 * @param {Request} http request
 * @param {Response} http response
 * @returns {success} - success message with status 201 if operation is successful
 * @param {Function} next - if error, pass the error to the next middleware
 */
export const addBookmark = async (req, res, next) => {
  try {
    // Check if there are any errors in the request
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({
        status: "error",
        message: "Données de requête invalides",
        errors: errors.array(),
      });
    }
    // Get user id from the request if there is one
    const userId = req.user?.id;
    if (!userId) {
      return res.status(401).json({ error: 'Utilisateur non authentifié.' });
    }
    // Get hikeId from the request body if there is one
    const { hikeId } = req.body;
    if (!hikeId) {
      return res.status(400).json({ error: "Le paramètre hikeId est requis." });
    }

    // Call the addBookmark method from the bookmarksDataMappers object
    const bookmark = await bookmarksDataMappers.addBookmark(userId, hikeId);
    // If the bookmark is already in the user's favorites, return an error
    if (!bookmark) {
      return res.status(409).json({ error: "Randonnée déjà ajoutée dans les favoris" });
    }
    // If the bookmark is added to the user's favorites, return a success message with status 201
    return res.status(201).json({ message: "Randonnée ajoutée dans les favoris", hike: bookmark });
  } catch (error) {
    next(error);
  }
};


/**
 * Delete an hike from the user's favorites
 */
export const removeBookmark = async (req, res, next) => {
  try {
    // Check if there are any errors in the request
    const errors = validationResult(req);
    
    if (!errors.isEmpty()) {
      return res.status(400).json({
        status: "error",
        message: "Données de requête invalides",
        errors: errors.array(),
      });
    }

    //  Get user id from the request if there is one
    const userId = req.user?.id;
    // Get hikeId from the request body if there is one
    const { hikeId } = req.body;
    // Call the removeBookmark method from the bookmarksDataMappers object
    const success = await bookmarksDataMappers.removeBookmark(userId, hikeId);
    // If the hike is in the user's favorites, return id with success message with status 200
    if (success) {
      return res.status(200).json({ hikeId, message: "Randonnée supprimée des favoris" });
    } else {
      // If the hike is not in the user's favorites, return an error
      const error = new Error("Randonnée non trouvée dans les favoris");
      error.statusCode = 404;
      throw error;
    }
  } catch (error) {
    next(error);
  }
};

/**
 * Get the user's favorites
 */
export const getBookmark = async (req, res, next) => {
  try {
    // Get user id from the request if there is one
    const userId = req.user.id;
    // Call the getBookmark method from the bookmarksDataMappers object
    const bookmarks = await bookmarksDataMappers.getBookmark(userId);
    // Return the list of user's favorites with status 200
    return res.status(200).json(bookmarks);
  } catch (error) {
    next(error);
  }
};
