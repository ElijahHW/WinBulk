
# FORENSICS - START #
    Write-Output "Forensics include the following programs:"     
    Write-Output "~~~~~~~~~~~~~~~~~~~~~~~~"
        Get-Content $p$x$c
        $responseForensics = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responseForensics -eq "y")
        {
        Get-Content $p$x$c | ForEach-Object{$install + " " + $_ + " " +$z} | Invoke-Expression
        } else {Write-Output "Skipped Forensics.."}
# FORENSICS - END #