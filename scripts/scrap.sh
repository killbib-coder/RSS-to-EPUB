#!/bin/bash

# Obtenir la date actuelle au format souhaité
CURRENT_DATE=$(date +"%Y-%m-%d")

# Convertir les recettes en EPUB avec la date dans le nom de fichier
ebook-convert ../recipes/example.recipe ../www/data/${CURRENT_DATE}-example.epub
ebook-convert ../recipes/multiple_recipe_example.recipe ../www/data/${CURRENT_DATE}-multiple_recipe_example.epub

