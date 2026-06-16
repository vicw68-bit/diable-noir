# Pousse le projet sur GitHub (vicw68-bit/diable-noir)
# Prérequis : Git installé — https://git-scm.com/download/win
# Puis exécuter dans PowerShell depuis ce dossier :
#   .\push-github.ps1

$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

$remoteUrl = "https://github.com/vicw68-bit/diable-noir.git"

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "Git n'est pas installé. Installez-le : https://git-scm.com/download/win" -ForegroundColor Red
    exit 1
}

if (-not (Test-Path .git)) {
    git init
    git branch -M main
}

$currentRemote = git remote get-url origin 2>$null
if (-not $currentRemote) {
    git remote add origin $remoteUrl
} elseif ($currentRemote -ne $remoteUrl) {
    git remote set-url origin $remoteUrl
}

git add index.html README.md database.rules.json firebase.json firebase-config.example.js .firebaserc .gitignore assets/

git diff --cached --quiet
if ($LASTEXITCODE -ne 0) {
    git commit -m @"
Mise à jour du jeu : reconnexion, UI table, sécurité Firebase.

Permet la reconnexion par pseudo en cours de partie, affiche la dernière carte jouée, améliore le journal de partie, et ajoute l'auth anonyme avec des règles Realtime Database restreintes.
"@
} else {
    Write-Host "Aucun changement à committer." -ForegroundColor Yellow
}

Write-Host "Envoi vers GitHub..." -ForegroundColor Cyan
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "OK — https://github.com/vicw68-bit/diable-noir" -ForegroundColor Green
    Write-Host "GitHub Pages : https://vicw68-bit.github.io/diable-noir/" -ForegroundColor Green
} else {
    Write-Host "Échec du push. Connectez-vous à GitHub (git credential manager ou token)." -ForegroundColor Red
}
