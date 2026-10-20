V8.2 — Correction des départages et du classement figé

Remplacer index.html sur GitHub. Ne pas modifier config.js.

Après mise à jour du départage, le classement Q et les tableaux OR/ARGENT/BRONZE/CHALLENGE sont recalculés si les phases finales n’ont aucun score. Si des scores de phases finales existent, une alerte empêche la modification : exporter une sauvegarde JSON, puis réinitialiser les phases finales avant de modifier les qualifications.

Exemple : Metz 2 TAB, Strasbourg 3 TAB => Strasbourg Q16, Metz Q17, sous réserve que ces deux équipes occupent les places 16 et 17 du classement.
