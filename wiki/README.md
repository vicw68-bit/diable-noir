# Wiki Diable Noir

Ce dossier contient les pages du **wiki GitHub**. Elles sont poussées vers :

`https://github.com/vicw68-bit/diable-noir.wiki.git`

La copie de référence pour les joueurs est aussi dans [`docs/`](../docs/).

## Synchroniser le wiki

```powershell
cd wiki
git init
git remote add origin https://github.com/vicw68-bit/diable-noir.wiki.git
git add .
git commit -m "Mise à jour wiki"
git push -u origin master
```

> GitHub Wiki utilise souvent la branche `master`. Si le dépôt wiki existe déjà, faites `git pull` avant de pousser.
