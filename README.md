# 🖥️ Sistema Básico de Monitoreo de Red en PowerShell

Este proyecto implementa un sistema simple de verificación de conectividad a Internet utilizando scripts en PowerShell. Se pueden utilizar junto con el Programador de Tareas de Windows para ejecutarse de forma automática cada ciertos minutos.

## 📂 Estructura

- `scripts/ping-check-simple.ps1`: Script básico que guarda los resultados del ping a `8.8.8.8` en un archivo log.
- `scripts/ping-check-popup.ps1`: Script avanzado que, además de guardar el log, muestra una ventana emergente si no hay conexión.
- `logs/`: Carpeta donde se almacenan los resultados (se crea automáticamente si no existe).

## ⚙️ Requisitos

- Windows con PowerShell
- Permisos para ejecutar scripts (`ExecutionPolicy`)
- Configurar una tarea en el Programador de tareas de Windows

## 🚀 Ejecución manual

```powershell
powershell.exe -ExecutionPolicy Bypass -File ".\scripts\ping-check-popup.ps1"
```

## 📅 Automatización

Puedes usar el Programador de tareas de Windows para ejecutar el script cada 10 minutos. Asegúrate de configurar:
- Ruta del script: completa, por ejemplo `C:\Users\<usuario>\OneDrive\Desktop\Lulys\scripts\ping-check-popup.ps1`
- Acción: `powershell.exe`
- Argumentos: `-ExecutionPolicy Bypass -File "ruta\al\script.ps1"`

## 📜 Licencia

Este proyecto está bajo la licencia MIT.
