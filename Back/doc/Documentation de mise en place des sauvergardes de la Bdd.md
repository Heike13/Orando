# Guide de Configuration pour la Sauvegarde Automatique de PostgreSQL sur Google Drive

## Prérequis

- PostgreSQL installé et configuré.
- Compte Google Drive actif.

## Etapes

1.  Installation de [gdrive](https://github.com/glotlabs/gdrive)

    Télécharger et installez `gdrive`, un outil en ligne de commande pour interagir avec google-drive.

    ```bash
    wget https://github.com/glotlabs/gdrive/releases/download/3.9.1/gdrive_linux-x64.tar.gz

    tar -xvzf gdrive_linux-x64.tar.gz

    chmod +x gdrive

    sudo mv gdrive /usr/local/bin/

    ```

2.  Ajouter un Compte Google à `gdrive`

    Initialisez `gdrive` et ajoutez votre commpte Google :

    ```bash
    gdrive account add
    ```

    Suivez les instructions pour obtenir le code d'autorisation et liez votre compte Google à `gdrive`.

    [Instructions](https://github.com/glotlabs/gdrive/blob/main/docs/create_google_api_credentials.md)

    Une foie la configuration terminer vous téléchager le json qui contient vos accés API

3.  Créer un dossier sur Google Drive

    - Créer un dossier sur votre Google drive

    - Ensuite sur votre Server lister les dossier pour récuperer leur ID :

          ```bash
          gdrive files list
          ```

      Notez l'ID du dossier créé, que vous utiliserez dans le script de sauvegarde.

4.  Installer le client Postgres qui permet exporter la BDD au format tar

        ```bash
            sudo apt install postgresql-client tar
        ```

5.  Créer le script de sauvegarde

Créez un fichier de script nommé `sauvergarde.sh` et collez le script suivant:

```bash
#!/bin/bash

# Informations de la base de données
USER="nom_user"
HOST="localhost"
DB_NAME="nom_database"
PASSWORD="votre_mot_de_passe"

# Définir les noms de sauvegarde
DAY_OF_WEEK=$(date +%A)
WEEK_OF_MONTH=$(($(date +%-d)/7+1))
BACKUP_FILE="sauvegarde_$(date +%Y%m%d%H%M%S).sql"
COMPRESSED_FILE="sauvegarde_$(date +%Y%m%d%H%M%S).tar.gz"


# Exporter la base de données
PGPASSWORD=$PASSWORD pg_dump -U $USER -h $HOST -d $DB_NAME > $BACKUP_FILE

# Vérifier si pg_dump a réussi
if [ $? -ne 0 ]; then
    echo "Erreur lors de l'exportation de la base de données"
    exit 1
fi

# Compresser le fichier de sauvegarde
tar -czvf $COMPRESSED_FILE $BACKUP_FILE

# Télécharger la sauvegarde quotidienne sur Google Drive
gdrive files upload --parent votre_dossier_id $COMPRESSED_FILE

# Si c'est le dimanche, gérer la sauvegarde hebdomadaire
if [ "$DAY_OF_WEEK" == "Sunday" ]; then
    gdrive files upload --parent votre_dossier_id $COMPRESSED_FILE
fi

# Si c'est la première semaine du mois, gérer la sauvegarde mensuelle
if [ "$WEEK_OF_MONTH" == "1" ]; then
    gdrive files upload --parent votre_dossier_id $COMPRESSED_FILE
fi

# Supprimer les fichiers locaux
rm $BACKUP_FILE $COMPRESSED_FILE

```

6. Rendre le Script Exécutable

Rendez le Script Exécutable:

```bash
    chmod +x sauvegarde.sh
```

7. Tester le Script Manuellement

Exécutez le Script pour vérifier qu'il fonctionne correctement:

```bash
    ./sauvegarde.sh
```

8. Automatiser avec `cron`

Ouvrez le crontab pour l'édition :

```bash
    crontab -e
```

Ajoutez une ligne pour exécuter le script chaque nuit à minuit:

```bash
    0 0 * * * /chemin/vers/sauvegarde.sh
```

En suivant ces étapes, vous devriez être meusure de sauvegarder automatiquement votre base de données PostgreSQL sur Google Drive, en utilisant `gdrive` avec une rotation des sauvegardes.
