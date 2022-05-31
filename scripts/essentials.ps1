# ESSENTIALS - START #
    Write-Output "Essentials include the following programs:"
    Write-Output "~~~~~~~~~~~~~~~~~~~~~~~~"
        Get-Content $p$x$c
        $responseEssentials = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responseEssentials -eq "y")
        {
        Get-Content $p$x$c | ForEach-Object{$isntall + " " + $_ + " " +$z} | Invoke-Expression
        } else {Write-Output "Skipped Essentials.."}
# ESSENTIALS - END #