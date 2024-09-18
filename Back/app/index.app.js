// Importation des modules
import usersRouter from "./routers/userRouter.js";
import hikesRouter from "./routers/hikesRouter.js";
import bookmarksRouter from "./routers/bookmarksRouter.js";
import authRouter from "./routers/authRouter.js";

/**
 * Initialise Swagger pour la documentation des API.
 * @param {import('express').Application} app -L'application Express.
 */
import { swaggerMiddleware } from "./middlewares/swaggerMiddleware.js";
import { authenticateJWT } from "./middlewares/jwtMiddleware.js";

export function initializeSwagger(app) {
  swaggerMiddleware(app);
}

/**
 * Initialise les routes de l'application.
 * @param {import('express').Application} app - L'application Express.
 */
export function initializeRoutes(app) {
  app.use("/hikes", hikesRouter);
  app.use("/accounts", authRouter);
  
  // Toutes les routes devront vérifier le JWT donc je vérifie ici
  app.use("/users", authenticateJWT, usersRouter);
  app.use("/bookmarks", authenticateJWT ,bookmarksRouter);
}

