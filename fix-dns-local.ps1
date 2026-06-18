# Corrige l'affichage "Site en construction" sur diable-noir.fr (cache DNS box)
# Clic droit → Exécuter en tant qu'administrateur

$ErrorActionPreference = "Stop"

if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "Relancez ce script en administrateur (clic droit)." -ForegroundColor Red
    pause
    exit 1
}

$githubIp = "185.199.108.153"
$hostsPath = "$env:SystemRoot\System32\drivers\etc\hosts"
$hostsBlock = @"

# Diable Noir - GitHub Pages
$githubIp diable-noir.fr
$githubIp www.diable-noir.fr
"@

$hosts = Get-Content $hostsPath -Raw
if ($hosts -notmatch "diable-noir\.fr") {
    Add-Content -Path $hostsPath -Value $hostsBlock -Encoding ASCII
    Write-Host "Fichier hosts mis a jour." -ForegroundColor Green
} else {
    Write-Host "Entrees deja presentes dans hosts." -ForegroundColor Yellow
}

$wifi = Get-NetAdapter | Where-Object { $_.Status -eq "Up" -and $_.Name -eq "Wi-Fi" } | Select-Object -First 1
if ($wifi) {
    Set-DnsClientServerAddress -InterfaceAlias $wifi.Name -ServerAddresses @("8.8.8.8", "8.8.4.4")
    Write-Host "DNS Wi-Fi : 8.8.8.8 / 8.8.4.4" -ForegroundColor Green
}

ipconfig /flushdns | Out-Null
Write-Host "Cache DNS vide." -ForegroundColor Green

Start-Sleep -Seconds 1
try {
    $r = Invoke-WebRequest -Uri "https://diable-noir.fr/" -UseBasicParsing -TimeoutSec 15
    if ($r.Content -match "DIABLE NOIR") {
        Write-Host "OK — https://diable-noir.fr affiche le jeu." -ForegroundColor Green
    } else {
        Write-Host "Le domaine repond mais le contenu est inattendu." -ForegroundColor Yellow
    }
} catch {
    Write-Host "Test HTTPS : $($_.Exception.Message)" -ForegroundColor Yellow
    Write-Host "Ouvrez https://diable-noir.fr dans le navigateur (Ctrl+F5)." -ForegroundColor Cyan
}

Write-Host ""
Write-Host "Pour annuler plus tard :" -ForegroundColor Gray
Write-Host "  - Retirez les lignes diable-noir.fr du fichier hosts"
Write-Host "  - Wi-Fi : DNS automatique (DHCP) dans les parametres reseau"
pause
