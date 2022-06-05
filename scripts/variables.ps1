## VARIABLES - START #

$packages = "..\packages\"
$install = "choco install"
$params = "-y" # add -f if you want to force install this program
$config = ".config"
$ps1 = ".ps1"
$i=0
$packArray = New-Object -TypeName 'System.Collections.ArrayList'
$packList = Get-ChildItem "..\packages" | ForEach-Object{($_ -replace(".config", ""))} 

## VARIABLES - END #