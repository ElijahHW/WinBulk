$altInstallDir='C:\ProgramData\chocoportable'
$env:ChocolateyInstall="$altInstallDir"
$ISO1="scripts\controller.ps1"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-WebRequest https://community.chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression
choco feature enable -n allowGlobalConfirmation
& "$PSScriptRoot\$ISO1"
