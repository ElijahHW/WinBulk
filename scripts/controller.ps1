# Installation script for Elijah Basic Windows Applications
## Variables
$p = "packages\"
$i = "choco install"
$z = "-fy"
$c = ".config"


echo "Initalizing Applications..."
$packList = Get-ChildItem ".\packages" | ForEach-Object{($_ -replace(".config", ""))}
Start-Sleep -s 2

# INTRO # 
echo "There are multiple categories to install packages from, categories include:"
echo $packList
echo "~~~~~~~~~~"
$response = read-host "Write the name of which packet cagetory you want to install first"

# ESSENTIALS - START #
    echo "Essentials include the following programs:"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~"
        Get-Content $p$response$c
        $responseEssentials = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responseEssentials -eq "y")
        {
        Get-Content $p$response$c | ForEach-Object{$i + " " + $_ + " " +$z} | iex
        } else {echo "Skipped Essentials.."}
# ESSENTIALS - END #

# DEVELOPMENT - START #
    echo "Development include the following programs:"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~"
        Get-Content $p$response$c
        $responseDevelopment = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responseDevelopment -eq "y")
        {
        Get-Content $p$response$c | ForEach-Object{$i + " " + $_ + " " +$z} | iex
        } else {echo "Skipped Development.."}
# DEVELOPMENT - END #

# BROWSERS - START #
    echo "Browsers include the following programs:"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~"
        Get-Content $p$response$c
        $responseBrowsers = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responseBrowsers -eq "y")
        {
        Get-Content $p$response$c | ForEach-Object{$i + " " + $_ + " " +$z} | iex
        } else {echo "Skipped Browsers.."}
# BROWSERS - END #

# ENTERTAINMENT - START #
    echo "Entertainment include the following programs:"     
    echo "~~~~~~~~~~~~~~~~~~~~~~~~"
        Get-Content $p$response$c
        $responseEntertainment = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responseEntertainment -eq "y")
        {
        Get-Content $p$response$c | ForEach-Object{$i + " " + $_ + " " +$z} | iex
        } else {echo "Skipped Entertainment.."}
# ENTERTAINMENT - END #

# FORENSICS - START #
    echo "Forensics include the following programs:"     
    echo "~~~~~~~~~~~~~~~~~~~~~~~~"
        Get-Content $p$response$c
        $responseForensics = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responseForensics -eq "y")
        {
        Get-Content $p$response$c | ForEach-Object{$i + " " + $_ + " " +$z} | iex
        } else {echo "Skipped Forensics.."}
# FORENSICS - END #

# PREMA - START #
    echo "Prema include the following programs:"     
    echo "~~~~~~~~~~~~~~~~~~~~~~~~"
        Get-Content $p$response$c
        $responsePrema = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responsePrema -eq "y")
        {
        Get-Content $p$response$c | ForEach-Object{$i + " " + $_ + " " +$z} | iex
    } else {echo "Skipped Prema.."}
# PREMA - END #

# COMMS - START #
    echo "Comms include the following programs:"     
    echo "~~~~~~~~~~~~~~~~~~~~~~~~"
        Get-Content $p$response$c
        $responseComms = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responseComms -eq "y")
        {
        Get-Content $p$response$c | ForEach-Object{$i + " " + $_ + " " +$z} | iex
    } else {echo "Skipped Comms.."}
# COMMS - END #

# SYSTEM - START #
    echo "System include the following programs:"     
    echo "~~~~~~~~~~~~~~~~~~~~~~~~"
        Get-Content $p$response$c
        $responseSystem = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responseSystem -eq "y")
        {
        Get-Content $p$response$c | ForEach-Object{$i + " " + $_ + " " +$z} | iex
    } else {echo "Skipped System.."}
# SYSTEM - END #
 
# OTHER - START #
    echo "Other include the following programs:"     
    echo "~~~~~~~~~~~~~~~~~~~~~~~~"
        Get-Content $p$response$c
        $responseOther = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responseOther -eq "y")
        {
        Get-Content $p$response$c | ForEach-Object{$i + " " + $_ + " " +$z} | iex
    } else {echo "Skipped Other.."}
# OTHER - END #

# CONFIGURATION #


break;