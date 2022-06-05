
# Initalizing things
Clear-Host
Write-Output "Initalizing.."
. ./variables.ps1
. ./functions.ps1

# CONTROLLER - START #
GetFiles
Write-Output '~~~~~~~~~~'
Write-Output $packArray
Write-Output '~~~~~~~~~~'
$msg = "Enter the name or number of which category to inspect"

ValidateResponse

# CONTROLLER - END #