#!/bin/bash
echo "=== Installation Serveur FiveM US Fun ==="

# Vérif dépendances
if ! command -v mysql &> /dev/null
then
    echo "MySQL/MariaDB n'est pas installé. Installez-le avant."
    exit
fi

# Création BDD
mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS fivem CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"

echo "Base de données créée."

# Données de départ
mkdir -p resources/[base]
mkdir -p resources/[essentiels]
mkdir -p resources/[fun_us]
mkdir -p resources/[bonus]
mkdir -p resources/[payants]
mkdir -p resources/[maps]
mkdir -p resources/[vehicules]

echo "Structure dossiers prête."
echo "=== Installation terminée ==="
