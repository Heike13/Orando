import jwt from 'jsonwebtoken';
import nodemailer from 'nodemailer';

const secretKey = process.env.JWT_SECRET;

const transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
        user: process.env.EMAIL,
        pass: process.env.EMAIL_PASSWORD
    }
});

/**
 * Fonction pour générer un token de vérification d'email
 * @param {number} userId - L'ID de l'utilisateur
 * @returns {string} - Le token de vérification généré
 */

export const generateEmailToken = (userId) => {
    return jwt.sign(
        { userId },
        secretKey,
        { expiresIn: '1h' } // le token expirera dans 1 heure
    );
};

/**
 * Fonction pour envoyer un email de vérification
 * @param {string} email - L'email du destinataire
 * @param {string} token - Le token de vérification
 * @returns {Promise<void>}
 */

export const sendVerificationEmail = (email, token) => {
    const verificationUrl = `https://o-rando.com/accounts/verify-email?token=${token}`;
    const mailOptions = {
        from: '"O-rando Support" <noreply.orando@gmail.com>',
        to: email,
        subject: 'Vérification de votre adresse email',
        text: `Cliquez sur le lien suivant pour vérifier votre adresse email : ${verificationUrl}`,
        html: `<p>Cliquez sur le lien suivant pour vérifier votre adresse email : <a href="${verificationUrl}">${verificationUrl}</a></p>`,
    };

    return transporter.sendMail(mailOptions);
};

/**
 * Fonction pour envoyer un email de réinitialisation de mot de passe
 * @param {string} email - L'email du destinataire
 * @param {string} token - Le token de réinitialisation
 * @returns {Promise<void>}
 */

export const sendResetPasswordEmail = (email, token) => {
    const resetPasswordUrl = `https://o-rando.com/connexion/reinit/?token=${token}`;
    const mailOptions = {
        from: '"O-rando Support" <noreply.orando@gmail.com>',
        to: email,
        subject: 'Réinitialisation de votre mot de passe',
        text: `Cliquez sur le lien suivant pour réinitialiser votre mot de passe : ${resetPasswordUrl}`,
        html: `<p>Cliquez sur le lien suivant pour réinitialiser votre mot de passe : <a href="${resetPasswordUrl}">${resetPasswordUrl}</a></p>`,
    }
    return transporter.sendMail(mailOptions);
};