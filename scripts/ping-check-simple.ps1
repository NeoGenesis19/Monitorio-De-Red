# Cambiar al directorio del script
Set-Location "C:\Users\Maria\OneDrive\Desktop\Lulys"

# Crear carpeta si no existe
if (-not (Test-Path -Path ".\logs-conectividad" -PathType Container)) {
    New-Item -Path ".\logs-conectividad" -ItemType Directory
}

# Realizar ping
if (Test-Connection -ComputerName 8.8.8.8 -Count 1 -Quiet) {
    Add-Content -Path ".\logs-conectividad\logs.txt" -Value "Conectividad exitosa - $(Get-Date)"
} else {
    Add-Content -Path ".\logs-conectividad\logs.txt" -Value "Conexión no exitosa - $(Get-Date)"
}

Pause
