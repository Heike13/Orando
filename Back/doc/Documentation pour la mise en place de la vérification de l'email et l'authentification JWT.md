# Documentation pour la mise en place de la vérification de l'email et l'authentification JWT

## Objectif

Cette documentation décrit les étapes nécessaires pour implémenter la vérification de l'email lors de l'inscription d'un utilisateur et pour s'assurer que seul un utilisateur avec un email vérifié peut accéder aux routes protégées.

## Prérequis

- Node.js et npm : Assurez-vous d'avoir Node.js et npm installés sur votre machine.

- Un compte Gmail : Pour envoyer des emails de vérification.

- Une base de données PostgreSQL : Pour stocker les informations des utilisateurs.

## 1. Installation des paquets nécessaires

Installez les paquets npm nécessaires pour la gestion des tokens JWT, l'envoi d'emails:

```bash
npm install nodemailer jsonwebtoken dotenv
```

## 2. Configuration de l'environnement

Créez un fichier .env à la racine de votre projet et ajoutez les variables suivantes :

```env
JWT_SECRET=your_jwt_secret_key
GMAIL_USER=your_gmail_user@gmail.com
GMAIL_APP_PASSWORD=your_gmail_app_password
```

## 3. Création d'un compte Gmail et configuration de l'accès

1. Créer un compte Gmail :

   Si vous n'avez pas déjà un compte Gmail, créez-en un sur [gmail.com](https://accounts.google.com)

2. Activé l'authentication en deux étapes

3. Créer un mot de passe d'application :

   Allez sur la page des paramètres de sécurité de votre compte Google, sous "Connexion à Google", sélectionnez "Mots de passe des applications". Suivez les instructions pour générer un mot de passe d'application à utiliser dans votre configuration.

## 4. Configuration de Nodemailer pour envoyer des emails

[NodeMailer](https://nodemailer.com/) est un module pour Node.js qui permet l'envoi d'emails facilement. Vous allez l'utiliser pour envoyer des emails de vérification à vos utilisateurs.

Configuration de base avec Nodemailer :

1. Installation de Nodemailer :

   Vous l'avez déjà installé avec la commande npm ci-dessus.

2. Création de l'outil d'envoi d'email :

Créez un fichier `emailUtils.js` dans votre répertoire utils. Ce fichier contiendra les fonctions pour envoyer des emails.

```javascript
import nodemailer from "nodemailer";

const transporter = nodemailer.createTransport({
  service: "gmail",
  auth: {
    user: process.env.GMAIL_USER,
    pass: process.env.GMAIL_APP_PASSWORD,
  },
});

export const sendVerificationEmail = (email, token) => {
  const verificationUrl = `https://yourdomain.com/verify-email?token=${token}`;
  const mailOptions = {
    from: `"Your App Name" <${process.env.GMAIL_USER}>`,
    to: email,
    subject: "Please verify your email address",
    text: `Click on the following link to verify your email address: ${verificationUrl}`,
    html: `<p>Click on the following link to verify your email address: <a href="${verificationUrl}">${verificationUrl}</a></p>`,
  };

  return transporter.sendMail(mailOptions);
};
```

3. Génération d'un token de vérification d'email :

Créez une fonction pour générer un token JWT pour la vérification de l'email dans le même fichier `emailUtils.js`.

```javascript
import jwt from "jsonwebtoken";

const secretKey = process.env.JWT_SECRET;

export const generateEmailToken = (userId) => {
  return jwt.sign({ userId }, secretKey, { expiresIn: "1h" });
};
```

## Tips

Dans votre table `utilisateurs` de postgresql rajouter une colonne par exemple `eamil_verified` de type boolean default false pour persiter la notion d'email verifié.
