$InstallDir='C:\ProgramData\chocoportable'
$env:ChocolateyInstall="$InstallDir"
$ISO1="FanaticController.ps1"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iwr https://community.chocolatey.org/install.ps1 -UseBasicParsing | iex
& "$PSScriptRoot\$ISO1"
