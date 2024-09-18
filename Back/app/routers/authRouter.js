import express from "express";
import { login, verifyEmail, signup, forgotPassword, resetPassword, logout, refreshToken } from "../controllers/authController.js";
import { hashPasswordMiddleware } from "../middlewares/scryptMiddleware.js";
import { loginValidator } from "../validators/loginValidator.js";
import { signupValidator } from "../validators/signupValidator.js";
import { authenticateJWT } from "../middlewares/jwtMiddleware.js";
import { forgotPasswordValidator } from "../validators/forgotPasswordValidator.js";
import { resetPasswordValidator } from "../validators/resetPasswordValidator.js";

const router = express.Router();

/**
 * @swagger
 * tags:
 *   - name: Accounts
 *     description: Opérations liées aux comptes utilisateurs
 */


/**
 * @swagger
 * /accounts/login:
 *   post:
 *     summary: Se connecter et obtenir un token JWT
 *     description: Permet à un utilisateur de se connecter en fournissant son email et son mot de passe. Si l'email n'est pas vérifié, un nouveau lien de vérification sera envoyé.
 *     tags: [Accounts]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               email:
 *                 type: string
 *               password:
 *                 type: string
 *     responses:
 *       200:
 *         description: Connexion réussie et token JWT renvoyé
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 token:
 *                   type: string
 *       400:
 *         $ref: '#/components/responses/BadRequestError'
 *       401:
 *         description: Email ou mot de passe incorrect, ou email non vérifié
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 status:
 *                   type: string
 *                   example: error
 *                 message:
 *                   type: string
 *                   example: Email ou mot de passe incorrect, ou email non vérifié
 *       500:
 *         description: Erreur interne du serveur
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 status:
 *                   type: string
 *                   example: error
 *                 message:
 *                   type: string
 *                   example: Erreur interne du serveur
 */

router.post("/login",loginValidator, login);

/**
 * @swagger
 * /accounts/signup:
 *   post:
 *     summary: Inscription d'un nouvel utilisateur
 *     description: Permet à un utilisateur de s'inscrire en fournissant un email, un mot de passe, un surnom et une localisation.
 *     tags: [Accounts]
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
 *               password:
 *                 type: string
 *     responses:
 *       201:
 *         description: Utilisateur créé avec succès. Un email de vérification a été envoyé.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Utilisateur créé avec succès. Un email de vérification a été envoyé.
 *       400:
 *         $ref: '#/components/responses/BadRequestError'
 *       409:
 *         description: Email ou pseudo déjà utilisé
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 status:
 *                   type: string
 *                   example: error
 *                 message:
 *                   type: string
 *                   example: Email ou pseudo déjà utilisé
 *       500:
 *         description: Erreur interne du serveur
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 status:
 *                   type: string
 *                   example: error
 *                 message:
 *                   type: string
 *                   example: Erreur interne du serveur
 */

router.post(
  "/signup",
  signupValidator,
  hashPasswordMiddleware,
  signup
);



/**
 * @swagger
 * /accounts/verify-email:
 *   get:
 *     summary: Vérifier l'email de l'utilisateur
 *     description: Vérifie l'email de l'utilisateur
 *     tags: [Accounts]
 *     parameters:
 *       - in: query
 *         name: token
 *         schema:
 *           type: string
 *         required: true
 *         description: Token de vérification de l'email
 *     responses:
 *       200:
 *         description: Email vérifié avec succès
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Email vérifié avec succès
 *       400:
 *         $ref: '#/components/responses/BadRequestError'
 */

router.get("/verify-email", verifyEmail);


/**
 * @swagger
 * /accounts/forgot-password:
 *   post:
 *     summary: Demander la réinitialisation du mot de passe
 *     description: Permet de demander la réinitialisation du mot de passe en fournissant un email. Si l'email existe, un lien de réinitialisation sera envoyé.
 *     tags: [Accounts]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               email:
 *                 type: string
 *     responses:
 *       200:
 *         description: Si un compte avec cet email existe, un email de réinitialisation de mot de passe a été envoyé.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Si un compte avec cet email existe, un email de réinitialisation de mot de passe a été envoyé.
 *       400:
 *         $ref: '#/components/responses/BadRequestError'
 */

router.post("/forgot-password",forgotPasswordValidator, forgotPassword);

/**
 * @swagger
 * /accounts/reset-password:
 *   post:
 *     summary: Réinitialiser le mot de passe
 *     description: Permet de réinitialiser le mot de passe en fournissant le token reçu par email et le nouveau mot de passe.
 *     tags: [Accounts]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               token:
 *                 type: string
 *               newPassword:
 *                 type: string
 *     responses:
 *       200:
 *         description: Mot de passe réinitialisé avec succès.
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Mot de passe réinitialisé avec succès.
 *       400:
 *         $ref: '#/components/responses/BadRequestError'
 *       403:
 *         description: Token invalide ou expiré
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *                   example: Token invalide ou expiré.
 */

router.post("/reset-password",resetPasswordValidator, resetPassword)

/**
 * @swagger
 * /accounts/logout:
 *   post:
 *     summary: Déconnecte l'utilisateur en révoquant son token
 *     tags: [Accounts]
 *     security:
 *       - bearerAuth: []
 *     responses:
 *       200:
 *         description: Déconnexion réussie
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 message:
 *                   type: string
 *                   example: Déconnexion réussie
 *       401:
 *         $ref: '#/components/responses/UnauthorizedError'
 */
router.post('/logout', authenticateJWT, logout);

/**
 * @swagger
 * /accounts/refresh:
 *   post:
 *     summary: Rafraîchir le token d'accès
 *     tags: [Accounts]
 *     responses:
 *       200:
 *         description: Token rafraîchi avec succès
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 token:
 *                   type: string
 *       401:
 *         description: Refresh token manquant ou utilisateur non trouvé
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 error:
 *                   type: string
 *       403:
 *         $ref: '#/components/responses/UnauthorizedError'
 */
router.post("/refresh", refreshToken);



export default router;
