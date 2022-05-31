
# SYSTEM - START #
    Write-Output "System include the following programs:"     
    Write-Output "~~~~~~~~~~~~~~~~~~~~~~~~"
        Get-Content $p$x$c
        $responseSystem = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responseSystem -eq "y")
        {
        Get-Content $p$x$c | ForEach-Object{$install + " " + $_ + " " +$z} | Invoke-Expression
    } else {Write-Output "Skipped System.."}
# SYSTEM - END #
 