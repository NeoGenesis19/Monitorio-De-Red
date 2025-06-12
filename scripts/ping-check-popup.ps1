# Ruta al log
$logPath = "C:\Scripts Powershell\logs\ping_log.txt"

# Crear carpeta si no existe
if (!(Test-Path -Path (Split-Path $logPath))) {
    New-Item -ItemType Directory -Path (Split-Path $logPath) -Force
}

# Fecha y hora
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Ejecutar ping
$pingResult = Test-Connection -ComputerName 8.8.8.8 -Count 2 -Quiet

# Guardar resultado
if ($pingResult) {
    $logEntry = "$timestamp - Conexión exitosa a Internet"
} else {
    $logEntry = "$timestamp - Sin conexión a Internet"
    
    # Mostrar alerta emergente
    Add-Type -AssemblyName PresentationFramework
    [System.Windows.MessageBox]::Show("No hay conexión a Internet", "Error de Red", 'OK', 'Error')
}

Add-Content -Path $logPath -Value $logEntry
