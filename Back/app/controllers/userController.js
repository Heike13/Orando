import { usersDataMappers } from "../dataMappers/index.dataMappers.js";
import { validationResult } from "express-validator";
import { verifyPassword, hashPassword } from "../utils/passwordUtils.js";

/**
 * Met à jour les informations d'un utilisateur.
 * @param {Request} req - La requête HTTP
 * @param {Response} res - La réponse HTTP
 * @param {Function} next - Fonction pour passer au middleware suivant
 */

export const updateUser = async (req, res, next) => {
  try {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json({
        status: "error",
        message: "Données de requête invalides",
        errors: errors.array(),
      });
    }

    const allowedFields = ['nickname', 'localisation', 'email', 'currentPassword', 'newPassword'];
    const userId = req.user.id;
    const { nickname, localisation, email, currentPassword, newPassword } = req.body;

    // Vérifier les champs non autorisés
    for (let field in req.body) {
      if (!allowedFields.includes(field)) {
        return res.status(400).json({
          status: "error",
          message:  `Le champ ${field} n'est pas autorisé. Seuls les champs suivants sont autorisés : ${allowedFields.join(', ')}.`,
        });
      }
    }

    let user = await usersDataMappers.findById(userId);
    if (!user) {
      const error = new Error("Utilisateur non trouvé");
      error.statusCode = 404;
      throw error;
    }

    const fieldsToUpdate = {};
    if (nickname !== undefined) fieldsToUpdate.nickname = nickname;
    if (localisation !== undefined) fieldsToUpdate.localisation = localisation;
    if (email !== undefined) fieldsToUpdate.email = email;

    if (newPassword) {
      if (!currentPassword) {
        const error = new Error("Le mot de passe actuel est requis pour changer le mot de passe");
        error.statusCode = 400;
        throw error;
      }
      const isPasswordValid = await verifyPassword(currentPassword, user.password);
      if (!isPasswordValid) {
        const error = new Error("Le mot de passe actuel est incorrect");
        error.statusCode = 400;
        throw error;
      }
      const hashedNewPassword = await hashPassword(newPassword);
      await usersDataMappers.updatePassword(userId, hashedNewPassword);
    }

    if (Object.keys(fieldsToUpdate).length > 0) {
      user = await usersDataMappers.updateUser(userId, fieldsToUpdate);
    }

    const filteredUser = {
      nickname: user.nickname,
      localisation: user.localisation,
      email: user.email,
    };

    return res.status(200).json({
      message: "Utilisateur mis à jour avec succès",
      filteredUser,
    });
  } catch (error) {
    next(error);
  }
};


/**
 * Récupère un utilisateur par son ID.
 * @param {Request} req - La requête HTTP
 * @param {Response} res - La réponse HTTP
 * @param {Function} next - Fonction pour passer au middleware suivant
 */

export const getUserById = async (req, res, next) => {
  try {
    const userId = req.user.id;
    const user = await usersDataMappers.findById(userId);

    if (!user) {
      const error = new Error("Utilisateur non trouvé");
      error.statusCode = 404;
      throw error;
    } else {
      //Filtrage des champs à renvoyer
      const filteredUser = {
        nickname: user.nickname,
        localisation: user.localisation,
        email: user.email,
      };
      return res.status(200).json(filteredUser);
    }
  } catch (error) {
    next(error);
  }
};

/**
 * Supprime un utilisateur
 * @param {Request} req - La requête HTTP
 * @param {Response} res - La réponse HTTP
 * @param {Function} next - Fonction pour passer au middleware suivant
 */

export const deleteUser = async (req, res, next) => {
  const userId = req.user.id;

  try {
    const success = await usersDataMappers.deleteUserAndDependencies(userId);
    if (success) {
      return res
        .status(200)
        .json({ message: "L'utilisateur à été supprimé avec succès" });
    } else {
      const error = new Error("L'utilisateur n'a pas pu être supprimé");
      error.statusCode = 400;
      throw error;
    }
  } catch (error) {
    next(error);
  }
};
