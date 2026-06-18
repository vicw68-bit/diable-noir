# Retire le contournement DNS local (hosts + DNS Google) pour diable-noir.fr
# Clic droit → Exécuter en tant qu'administrateur

$ErrorActionPreference = "Stop"

if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "Relancez ce script en administrateur (clic droit)." -ForegroundColor Red
    pause
    exit 1
}

$hostsPath = "$env:SystemRoot\System32\drivers\etc\hosts"
$lines = Get-Content $hostsPath | Where-Object {
    $_ -notmatch "diable-noir\.fr" -and $_ -notmatch "# Diable Noir"
}
Set-Content -Path $hostsPath -Value $lines -Encoding ASCII
Write-Host "Entrees diable-noir.fr retirees du fichier hosts." -ForegroundColor Green

$wifi = Get-NetAdapter | Where-Object { $_.Status -eq "Up" -and $_.Name -eq "Wi-Fi" } | Select-Object -First 1
if ($wifi) {
    Set-DnsClientServerAddress -InterfaceAlias $wifi.Name -ResetServerAddresses
    Write-Host "DNS Wi-Fi : automatique (box)." -ForegroundColor Green
}

ipconfig /flushdns | Out-Null
Write-Host "Cache DNS vide." -ForegroundColor Green

Write-Host ""
Write-Host "Dans le navigateur :" -ForegroundColor Cyan
Write-Host "  1. Ouvrez https://diable-noir.fr (avec https://)"
Write-Host "  2. Ctrl+Shift+Suppr → effacer cache + cookies pour diable-noir.fr"
Write-Host "  3. Si PWA installee : desinstallez l'app, puis reinstallez depuis le site"
Write-Host "  4. Chrome : Parametres → Confidentialite → Effacer donnees de navigation"
pause
