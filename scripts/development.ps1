
# DEVELOPMENT - START #
    Write-Output "Development include the following programs:"
    Write-Output "~~~~~~~~~~~~~~~~~~~~~~~~"
        Get-Content $p$x$c
        $responseDevelopment = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responseDevelopment -eq "y")
        {
        Get-Content $p$x$c | ForEach-Object{$install + " " + $_ + " " +$z} | Invoke-Expression
        } else {Write-Output "Skipped Development.."}
# DEVELOPMENT - END #