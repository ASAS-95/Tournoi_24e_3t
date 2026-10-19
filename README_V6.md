# Tournoi FC Montmorency U12 — V6

Conserve les fonctions organisateur V5 et la connexion Supabase.

## Nouveautés diffusion publique
- Logos importés dans l’interface organisateur, affichés sur les rencontres et classements (transmis via publication Supabase).
- Liserés OR / ARGENT / BRONZE lors de la disponibilité des phases finales.
- Recherche d’équipe et favoris enregistrés dans le navigateur.
- Annonce organisateur saisie dans « Diffusion publique », puis synchronisée via publication.
- Plan des six terrains, club-house/accueil/buvette/restauration, tirs au but et parkings.
- Mode télévision : `direct.html?tv=1`, rotation des onglets toutes les 16 secondes.
- Lien cliquable du terrain depuis les rencontres.

## Installation
Décompresser l’archive, déposer les fichiers à la racine du dépôt GitHub existant, remplacer les fichiers homonymes, valider le commit et attendre le déploiement Vercel. Ne pas modifier le SQL Supabase.

## Vérification
Se connecter comme organisateur, importer un petit logo PNG, enregistrer une annonce, publier, puis ouvrir direct.html dans une fenêtre privée. Les scores et logos apparaissent après publication, avec rafraîchissement toutes les 20 secondes.

## Attention
Le plan est basé sur la photo aérienne fournie et les repères positionnés manuellement : contrôler sur place la localisation exacte des points avant impression. Les favoris restent propres à chaque appareil. La diffusion n’est pas un flux instantané : les visiteurs actualisent toutes les 20 secondes.
