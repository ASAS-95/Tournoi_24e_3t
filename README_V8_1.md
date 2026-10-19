# Correctif V8.1 — tirs au but

Correction de l'écran Classement : les positions sont calculées automatiquement à partir des résultats des tirs au but. Les sélections manuelles contradictoires sont supprimées. Une égalité non résolue empêche la validation.

- Deux équipes : saisir le nombre total de tirs réussis (exemple : Saint-Étienne 3, Bordeaux 4). Le score le plus élevé est classé devant.
- Trois équipes ou plus : saisir les tirs réussis lors de la première série de trois (0 à 3). Pour les équipes encore à égalité, ajouter les tirs des séries suivantes avec `+` (exemple : `3+1`, `3+0`, `2`). Chaque série supplémentaire comporte un tir par équipe encore à égalité. Une équipe déjà départagée ne participe pas aux séries suivantes.
- L'écran affiche un aperçu de l'ordre calculé avant validation. Les anciens départages enregistrés dont les positions contredisent les scores sont considérés comme non validés et doivent être corrigés.

## Installation

Faire d'abord une sauvegarde JSON de votre tournoi. Pour appliquer uniquement ce correctif, remplacer **index.html** dans le dépôt GitHub par le fichier de cette archive. Ne pas modifier `config.js` (connexion Supabase). Les autres fichiers du site sont inchangés.

## Limites

Le contrôle des deux équipes vérifie que les totaux sont différents, sans reconstituer le détail chronologique des tirs. Le responsable du tournoi doit vérifier que la séance s'est terminée conformément au règlement. Les phases finales des formats 8 et 16 équipes restent non prises en charge dans cette version.
