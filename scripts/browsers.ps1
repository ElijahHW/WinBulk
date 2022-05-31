# BROWSERS - START #
    Write-Output "Browsers include the following programs:"
    Write-Output "~~~~~~~~~~~~~~~~~~~~~~~~"
        Get-Content $p$x$c
        $responseBrowsers = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responseBrowsers -eq "y")
        {
        Get-Content $p$x$c | ForEach-Object{$install + " " + $_ + " " +$z} | Invoke-Expression
        } else {Write-Output "Skipped Browsers.."}
# BROWSERS - END #