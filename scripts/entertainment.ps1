
# ENTERTAINMENT - START #
    Write-Output "Entertainment include the following programs:"     
    Write-Output "~~~~~~~~~~~~~~~~~~~~~~~~"
        Get-Content $p$x$c
        $responseEntertainment = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responseEntertainment -eq "y")
        {
        Get-Content $p$x$c | ForEach-Object{$install + " " + $_ + " " +$z} | Invoke-Expression
        } else {Write-Output "Skipped Entertainment.."}
# ENTERTAINMENT - END #