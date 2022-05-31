# PREMA - START #
    Write-Output "Prema include the following programs:"     
    Write-Output "~~~~~~~~~~~~~~~~~~~~~~~~"
         Get-Content $p$x$c
        $responsePrema = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responsePrema -eq "y")
        {
         Get-Content $p$x$c | ForEach-Object{$install + " " + $_ + " " +$z} | Invoke-Expression
    } else {Write-Output "Skipped Prema.."}
# PREMA - END #