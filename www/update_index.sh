#!/bin/bash

# Chemin vers le fichier index.html
INDEX_FILE="./index.html"

# Chemin vers le dossier contenant les fichiers EPUB
EPUB_DIR="./data"

# Créer une liste des fichiers EPUB
EPUB_FILES=("$EPUB_DIR"/*.epub)

# Commencer à construire la nouvelle liste
NEW_LIST=""

# Boucle à travers chaque fichier EPUB
for epub in "${EPUB_FILES[@]}"; do
    # Extraire le nom de fichier sans l'extension
    FILENAME=$(basename "$epub" .epub)
    # Ajouter une ligne <li> à la nouvelle liste
    NEW_LIST+="<li>\n    <a href=\"$epub\">News $FILENAME</a>\n</li>\n"
done

# Insérer la nouvelle liste dans le fichier index.html
# On utilise sed pour remplacer la section <ul> existante
sed -i.bak "/<ul>/,/<\/ul>/c\<ul>\n$NEW_LIST<\/ul>" "$INDEX_FILE"

