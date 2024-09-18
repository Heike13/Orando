import express from "express";
import {
  updateUser,
  getUserById,
  deleteUser,
} from "../controllers/userController.js";

import { userValidators } from "../validators/usersValidators.js";
import { validateRequest } from "../middlewares/validateReqMiddleware.js";
import { authenticateJWT } from "../middlewares/jwtMiddleware.js";

const router = express.Router();

/**
 * @swagger
 * tags:
 *   - name: Users
 *     description: Operations related to users
 */

/**
 * @swagger
 * /users:
 *   get:
 *     summary: Récupérer les informations de l'utilisateur connecté
 *     tags: [Users]
 *     security:
 *       - bearerAuth: []
 *     responses:
 *       200:
 *         description: Informations de l'utilisateur récupérées avec succès
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 id:
 *                   type: integer
 *                 nickname:
 *                   type: string
 *                 localisation:
 *                   type: string
 *                 email:
 *                   type: string
 *                 email_verified:
 *                   type: boolean
 *                 created_at:
 *                   type: string
 *                   format: date-time
 *                 updated_at:
 *                   type: string
 *                   format: date-time
 *       401:
 *         $ref: '#/components/responses/UnauthorizedError'
 */
router.get("/", authenticateJWT, getUserById);

/**
 * @swagger
 * /users:
 *   patch:
 *     summary: Mettre à jour les informations de l'utilisateur connecté
 *     tags: [Users]
 *     security:
 *       - bearerAuth: []
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               nickname:
 *                 type: string
 *               localisation:
 *                 type: string
 *               email:
 *                 type: string
 *               currentPassword:
 *                 type: string
 *               newPassword:
 *                 type: string
 *     responses:
 *       200:
 *         description: Informations de l'utilisateur mises à jour avec succès
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Informations mises à jour avec succès
 *       400:
 *         $ref: '#/components/responses/BadRequestError'
 *       401:
 *         $ref: '#/components/responses/UnauthorizedError'
 */
router.patch("/", authenticateJWT, userValidators,  validateRequest, updateUser);

/**
 * @swagger
 * /users:
 *   delete:
 *     summary: Supprimer le compte de l'utilisateur connecté
 *     tags: [Users]
 *     security:
 *       - bearerAuth: []
 *     responses:
 *       204:
 *         description: Compte utilisateur supprimé avec succès
 *       401:
 *         $ref: '#/components/responses/UnauthorizedError'
 */
router.delete("/", authenticateJWT, deleteUser);

export default router;
