
# Initalizing things
Write-Output "Initalizing.."
. ./variables.ps1
. ./functions.ps1

# CONTROLLER - START #
Write-Output '' | GetFiles
Write-Output "Write the name or number of which category to inspect"
Write-Output '~~~~~~~~~~'
Write-Output $packArray
Write-Output '~~~~~~~~~~'

$response = read-host " "
if($packList -match $response)
    {      
        GetPackByName
    }     
elseif([int]::TryParse($response, [ref]$i))
    {
        GetPackByNumber
    }  


