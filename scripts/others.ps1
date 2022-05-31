
# OTHER - START #
    Write-Output "Other include the following programs:"     
    Write-Output "~~~~~~~~~~~~~~~~~~~~~~~~"
        Get-Content $p$x$c
        $responseOther = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responseOther -eq "y")
        {
        Get-Content $p$x$c | ForEach-Object{$install + " " + $_ + " " +$z} | Invoke-Expression
    } else {Write-Output "Skipped Other.."}
# OTHER - END #