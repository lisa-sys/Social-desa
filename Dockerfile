# Utiliser l'image PHP avec Apache
FROM php:8.2-apache

# Installer les bibliothèques de développement zlib, libpng, et libzip
RUN apt-get update && \
    apt-get install -y zlib1g-dev libpng-dev libzip-dev

# Activer le module mod_rewrite
RUN a2enmod rewrite

# Activer les extensions PHP nécessaires
RUN docker-php-ext-install mysqli gd zip

# Copier le contenu de votre application dans le conteneur
COPY . /var/www/html

# Ajouter la commande pour changer les permissions des répertoires
RUN chmod -R 777 /var/www/html/content/uploads /var/www/html/content/themes/default/templates_compiled /var/www/html/includes


# Exposer le port 80 pour le serveur web Apache
EXPOSE 80