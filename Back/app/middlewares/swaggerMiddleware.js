import swaggerJSDoc from "swagger-jsdoc";
import swaggerUi from "swagger-ui-express";
import express from "express";

// Configuration de Swagger
const swaggerOptions = {
  definition: {
    openapi: "3.0.0",
    info: {
      title: "API de O'rando",
      version: "1.0.0",
      description: "Ce projet vise à développer un site internet de randonnées, permettant aux utilisateurs de découvrir et de partager des itinéraires de randonnées. La partie backend de ce projet utilise Node.js pour gérer les requêtes et fournir les données nécessaires.",
    },
    servers: [
      {
        url: "http://localhost:4000",
        description: "Serveur de développement local",
      },
      {
        url: "https://o-rando.com",
        description: "Serveur de production",
      },
    ],
    components: {
      securitySchemes: {
        bearerAuth: {
          type: "http",
          scheme: "bearer",
          bearerFormat: "JWT",
        },
      },
      responses: {
        UnauthorizedError: {
          description: "JWT token is missing or invalid",
          content: {
            "application/json": {
              schema: {
                type: "object",
                properties: {
                  error: {
                    type: "string",
                    example: "Token invalide ou expiré.",
                  },
                },
              },
            },
          },
        },
        BadRequestError: {
          description: "Invalid request data",
          content: {
            "application/json": {
              schema: {
                type: "object",
                properties: {
                  status: {
                    type: "string",
                    example: "error",
                  },
                  message: {
                    type: "string",
                    example: "Données de requête invalides",
                  },
                  errors: {
                    type: "array",
                    items: {
                      type: "object",
                      properties: {
                        type: {
                          type: "string",
                        },
                        msg: {
                          type: "string",
                        },
                        path: {
                          type: "string",
                        },
                        location: {
                          type: "string",
                        },
                      },
                    },
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  apis: ["./app/routers/*.js"], // Chemin vers les fichiers contenant les annotations swagger
};

// Initialisation de Swagger-jsdoc
const swaggerDocs = swaggerJSDoc(swaggerOptions);

/**
 * Middleware pour configurer Swagger
 * @param {Express.Application} app - L'application Express
 */
export const swaggerMiddleware = (app) => {
  // Serveur de tous les fichiers statiques dans le dossier 'public'
  app.use(express.static('public'));

  // Configuration et mise en place de Swagger UI
  app.use(
    "/api-docs",
    swaggerUi.serve,
    swaggerUi.setup(swaggerDocs, {
      customCssUrl: "/swaggerCustom.css",
      customSiteTitle: "O'Rando API Documentation",
      customfavIcon: "/Favicon-blanc.jpg",
    })
  );
};