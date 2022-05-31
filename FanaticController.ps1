# Installation script for Elijah Basic Windows Applications
## Variables
$p = "packages\"
$i = "sudo choco install"
$z = "-fy"
$c = ".config"


echo "Initalizing Applications..."
$packList = Get-ChildItem ".\packages" | ForEach-Object{($_ -replace(".config", ""))}
Start-Sleep -s 2

echo "There are multiple categories to install packages from, categories include:"
echo $packList
echo "~~~~~~~~~~"
$response = read-host "Write the name of which packet cagetory you want to install first"

# ESSENTIALS #
echo "Essentials category include the following programs:"
echo "~~~~~~~~~~~~~~~~~~~~~~~~"
Get-Content $p$response$c
$responseEssentials = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
if($responseEssentials -eq "y") {

 Get-Content $p$response$c | ForEach-Object{$i + " " + $_ + " " +$z} | iex
 
} else {echo "Skipped Essentials.."}
break;




$Development = read-host "Do you want to install the Development Pack? ([Y]es/[N]o)"
if($Development -eq "y") {
# DEVELOPMENT #


} else {echo "Skipped Development.."}


$Browsers = read-host "Do you want to install the Browsers Pack? ([Y]es/[N]o)"
if($Browsers -eq "y") {
# BROWSERS #

} else {echo "Skipped Browsers.."}

$Entertainment = read-host "Do you want to install the Entertainment Pack? ([Y]es/[N]o)"
if($Entertainment -eq "y") {
# ENTERTAINMENT #


} else {echo "Skipped Entertainment.."}


$Forensics = read-host "Do you want to install the Forensics Pack? ([Y]es/[N]o)"
if($Forensics -eq "y") {
# FORENSICS #


} else {echo "Skipped Forensics.."}

echo
$ReverseEngineering = read-host "Do you want to install the ReverseEngineering Pack? ([Y]es/[N]o)"
if($ReverseEngineering -eq "y") {

# REVERSE ENGINEERING #


} else {echo "Skipped ReverseEngineering.."}


$Communications = read-host "Do you want to install the Communications Pack? ([Y]es/[N]o)"
if($Communications -eq "y") {

# COMMUNICATIONS #


} else {echo "Skipped Communications.."}


$System = read-host "Do you want to install the System Pack? ([Y]es/[N]o)"
if($System -eq "y") {

# SYSTEM #


} else {echo "Skipped System.."}

Start-Sleep -s 2
$Other = read-host "Do you want to install the Other Pack? ([Y]es/[N]o)"
if($Other -eq "y") {

# OTHERS #


} else {echo "Skipped Other.."}



# OTHER CONFIGURATION #
#choco feature disable -n allowGlobalConfirmation

break;