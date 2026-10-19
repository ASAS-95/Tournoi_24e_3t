# Tournoi FC Montmorency — V8

Basée sur la V7, avec :
- Règlement dans Accueil et sur la page publique.
- Détection des égalités persistantes après critères de classement (points, différence, buts marqués, victoires ; confrontation directe pour deux équipes qui se sont rencontrées).
- Départages de toutes les places avec saisie du résultat et ordre validé par l’organisateur ; génération des phases finales bloquée tant que les égalités ne sont pas résolues.
- Affichage des noms d’équipes amélioré dans la saisie des scores.
- Quatrième tableau renommé CHALLENGE pour 32 équipes.

## Limitation importante
Le moteur de phases finales hérité de la V7 suppose encore des tableaux de 8 équipes. Pour les formats 8 et 16 équipes, les répartitions réglementaires 4/4 et 6/6/4 sont affichées, mais les phases finales doivent être adaptées avant usage. Ne pas créer de phases finales avec ces formats.

## Installation
Remplacer les fichiers du dépôt par ceux de cette archive, en conservant votre config.js Supabase actuel. Exporter une sauvegarde JSON depuis la V7 avant mise à jour.
