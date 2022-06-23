$altInstallDir='C:\ProgramData\chocoportable'
$env:ChocolateyInstall="$altInstallDir"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-WebRequest https://community.chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression
choco feature enable -y allowGlobalConfirmation

# Initalizing things
Clear-Host
Write-Output "Initalizing.."
. ./scripts/variables.ps1
. ./scripts/functions.ps1

# CONTROLLER - START #

GetFiles
Initiate

# CONTROLLER - END #