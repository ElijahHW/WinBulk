
# COMMS - START #
    echo "Comms include the following programs:"     
    echo "~~~~~~~~~~~~~~~~~~~~~~~~"
        Get-Content $p$x$c
        $responseComms = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($responseComms -eq "y")
        {
        Get-Content $p$x$c | ForEach-Object{$install + " " + $_ + " " +$z} | iex
    } else {echo "Skipped Comms.."}
# COMMS - END #