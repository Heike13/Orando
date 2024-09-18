import express from "express";
const router = express.Router();
import {
  addBookmark,
  removeBookmark,
  getBookmark,
} from "../controllers/bookmarksController.js";
import { bookmarksValidators } from "../validators/bookmarksValidators.js";

/**
 * @swagger
 * tags:
 *   - name: Bookmarks
 *     description: Gestion des favoris
 */

/**
 * @swagger
 * /bookmarks:
 *   post:
 *     summary: Ajouter une randonnée dans les favoris d'un utilisateur
 *     tags: [Bookmarks]
 *     security:
 *       - bearerAuth: []
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               hikeId:
 *                 type: integer
 *                 description: ID de la randonnée à ajouter en favori
 *     responses:
 *       201:
 *         description: Randonnée ajoutée dans les favoris
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Randonnée ajoutée dans les favoris
 *       400:
 *         $ref: '#/components/responses/BadRequestError'
 *       401:
 *         $ref: '#/components/responses/UnauthorizedError'
 *       404:
 *         description: Randonnée non trouvée
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 status:
 *                   type: string
 *                   example: "error"
 *                 message:
 *                   type: string
 *                   example: "Aucun hike trouvé avec cet ID."
 */
router.post(
  "/",
  bookmarksValidators,
  addBookmark
);

/**
 * @swagger
 * /bookmarks:
 *   delete:
 *     summary: Supprimer une randonnée des favoris d'un utilisateur
 *     tags: [Bookmarks]
 *     security:
 *       - bearerAuth: []
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               hikeId:
 *                 type: integer
 *                 description: ID de la randonnée à supprimer des favoris
 *     responses:
 *       204:
 *         description: Randonnée supprimée des favoris
 *       400:
 *         $ref: '#/components/responses/BadRequestError'
 *       401:
 *         $ref: '#/components/responses/UnauthorizedError'
 *       404:
 *         description: Favori non trouvé
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 status:
 *                   type: string
 *                   example: "error"
 *                 message:
 *                   type: string
 *                   example: "Favori non trouvé"
 */

router.delete(
  "/",
  bookmarksValidators,
  removeBookmark
);

/**
 * @swagger
 * /bookmarks:
 *   get:
 *     summary: Récupérer la liste des randonnées favorites
 *     tags: [Bookmarks]
 *     security:
 *       - bearerAuth: []
 *     responses:
 *       200:
 *         description: La liste des randonnées favorites
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 type: object
 *                 properties:
 *                   id:
 *                     type: integer
 *                   slug:
 *                     type: string
 *                   title:
 *                     type: string
 *                   description:
 *                     type: string
 *                   pictures:
 *                     type: array
 *                     items:
 *                       type: string
 *                   difficulty:
 *                     type: string
 *                   time:
 *                     type: integer
 *                   distance:
 *                     type: number
 *                   localisation:
 *                     type: string
 *                   details:
 *                     type: string
 *                   gps_coordinate:
 *                     type: object
 *                   created_at:
 *                     type: string
 *                     format: date-time
 *                   updated_at:
 *                     type: string
 *                     format: date-time
 *       401:
 *         $ref: '#/components/responses/UnauthorizedError'
 */

// authenticateJWT est un middleware qui vérifie la validité du token JWT
// et s'il trouve un token valide, il ajoute l'ID de l'utilisateur dans la requête
router.get("/", getBookmark);

export default router;
