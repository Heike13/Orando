# Test de l'API doc swagger

## 1. Compte utilisateur

- Inscription d'un nouvel utilisateur : /accounts/signup
  ```bash
  {
  "nickname": "Skylar",
  "localisation": "Gironde",
  "email": "kevin.cannizzaro@oclock.school",
  "password": "Orandocitystreet74/"
  }
  ```

- Vérifie l'email de l'utilisateur : /accounts/verify-email
  ```bash
  Copier le Token donner dans l'Email en question

  Token : eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjExLCJpYXQiOjE3MjEzMTIwMzMsImV4cCI6MTcyMTMxNTYzM30.dN0vZuAdzbqPlmMVOg35JEab65Oh2jxuDI_6SGNpMW0
  ```
- L'utilisateur doit se connecter pour obtenir son JWT et le refresh : /accounts/login
  ```bash
  {
  "email": "kevin.cannizzaro@oclock.school",
  "password": "Orandocitystreet74/"
  }

  Resultat :
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjExLCJlbWFpbCI6ImtldmluLmNhbm5penphcm9Ab2Nsb2NrLnNjaG9vbCIsImlwIjoiOjpmZmZmOjEyNy4wLjAuMSIsInVzZXJBZ2VudCI6Ik1vemlsbGEvNS4wIChYMTE7IFVidW50dTsgTGludXggeDg2XzY0OyBydjoxMDkuMCkgR2Vja28vMjAxMDAxMDEgRmlyZWZveC8xMTIuMCIsImlhdCI6MTcyMTMxMjUyMiwiZXhwIjoxNzIxMzE2MTIyfQ.1O7Salg2fnlDzz7IanF6zQo8gBh9cjaOgitDXvsdjEo"

  Coller le token dans " Authorize " pour accéder au fonctionnalité bloquer sans compte.

  ```
- Test d'authentification réussi : /users
  ```bash
  Etape 1 : Try it out
  Etape 2 : Execute

  Resultat : 
  {
  "nickname": "Skylar",
  "localisation": "Gironde",
  "email": "kevin.cannizzaro@oclock.school"
  }
  ```

## 2. Favoris

- Ajout d'une randonnées dans la liste des favoris :  POST /bookmarks
  - Il faut etre préalablement connecter avec le Token pour accéder au favoris
  ```bash
  {
  "hikeId": 2
  }
  ```
- Récupérer la liste des randonnées favorites
  ```bash
  Etape 1 : Try it Out
  Etape 2 : Execute

  Resultat : Liste en Json des randonnées qui sont dans la liste des favoris
  ```
  