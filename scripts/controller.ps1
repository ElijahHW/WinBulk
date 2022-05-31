# Installation script for Elijah Basic Windows Applications

## Variables
$p = "..\packages\";
$s = "..\scripts\";
$install = "choco install";
$z = "-y"; # add -f if you want to force install this program
$c = ".config";
$ps1 = ".ps1";
$i=0;

# CONTROLLER - START #
$packArray = New-Object -TypeName 'System.Collections.ArrayList';
$packageList = Get-ChildItem "..\packages" | ForEach-Object{($_ -replace(".config", ""))} 
Write-Output "Initalizing Controller..."
foreach($item in $packageList) {
    $i++;
    $format=$item.Substring(0,1).ToUpper() + $item.Substring(1);
    $newItem="(" + $i.ToString() + ")" + " " + $format;  
    $packArray.add($newItem) | out-null;

    }

Write-Output "There are multiple categories to install packages from, categories include:"
Write-Output '~~~~~~~~~~'
Write-Output $packArray
Write-Output '~~~~~~~~~~'

$response = read-host "Write the name or number of which category to inspect"
    if($packageList -match $response)
    {      
        $runScript = Get-ChildItem $s$response$ps1
        # RUN ACTUAL CHOCO SCRIPT
        Invoke-Expression $runScript
    } 
    elseif ($response -ne "null")
    {
        foreach($item in $packArray)
        {
            if($response -eq $item[1]) {
                $x = $item[4..99] -join ''; 
                $runScript = Get-ChildItem $s$x$ps1
                Invoke-Expression $runScript 
            } 
        }      
    }
    else
    {
        Write-Output "Skipped.."
    }
# CONTROLLER - END #

# EXTRA CONFIGURATION #

break;