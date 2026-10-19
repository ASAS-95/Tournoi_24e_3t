# V5 — Page publique en lecture seule et diffusion Supabase

## Installation sur le site existant
Copier à la racine du dépôt GitHub existant : `index.html`, `direct.html`, `config.js`, `logo-montmorency.png`, `qr-tournoi.png`. Ne pas créer de nouveau dépôt. Le QR code pointe vers https://tournoi24e3t.vercel.app/direct.html.

## Configuration de la synchronisation (indispensable pour le direct)
1. Créer un projet Supabase, puis un compte administrateur dans Authentication > Users (adresse e-mail et mot de passe). Désactiver l'inscription publique si non souhaitée.
2. Récupérer son UID Auth dans Authentication > Users.
3. Dans `supabase_setup.sql`, remplacer **les deux occurrences** de `00000000-0000-0000-0000-000000000000` par cet UID, puis exécuter le SQL dans Supabase SQL Editor.
4. Dans `config.js`, remplir `url` et `anonKey` avec l'URL du projet et la clé **publique** anon (JWT anon, compatible avec l'API REST Supabase). **Jamais** la clé `service_role` ou le mot de passe dans le code.
5. Déployer ces fichiers sur GitHub/Vercel. Ouvrir la page organisateur, onglet **Diffusion publique**, se connecter, puis **Publier maintenant**.
6. Tester sur un autre téléphone en ouvrant `/direct.html`. La page recharge les résultats toutes les 20 secondes.

## Important
- La page publique est en lecture seule, avec une politique RLS Supabase qui interdit aux visiteurs d'écrire.
- La page organisateur reste accessible et permet des modifications **locales** sans connexion ; seule la publication sur Supabase exige un compte autorisé. Ce n'est pas un verrouillage intégral de l'interface organisateur.
- La synchronisation va **du navigateur organisateur vers Supabase**, puis vers les visiteurs. Ne pas saisir simultanément des résultats depuis plusieurs appareils organisateurs : risque de conflits.
- Exporter le JSON avant toute modification majeure. Ne pas publier d'informations personnelles sur des mineurs.
- Les horaires de phases finales ne sont pas calculés sur la page publique ; les rencontres sont visibles, et les horaires précis restent à confirmer.
