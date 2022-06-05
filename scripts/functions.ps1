
# FUNCTIONS - START # 

function GetFiles {
    foreach($pack in $packList)
    {
        $i++
        $format = $pack.Substring(0,1).ToUpper() + $pack.Substring(1)
        $newItem = "(" + $i.ToString() + ")" + " " + $format
        $packArray.add($newItem) | out-null
    }
}

function GetPackByName ($resultPack) {
    foreach($pack in $packList)
    {
        if($response -eq $pack) {
        $resultPack = $pack
        run
        } 
    }     
}

function GetPackByNumber ($resultPack) {
    foreach($pack in $packArray)
    {
        if($response -eq $pack[1]) {
            $pack = $pack[4..99] -join ''
            $resultPack = $pack 
            run 
        } 
    } 
}

function Run {
    Write-Output "Running the file: $resultPack$ps1" 
    Get-Content $packages$resultPack$config
        $response = read-host "Do you want to install the listed programs? ([Y]es/[N]o)"
        if($response -like "y**")
        {
            Get-Content $packages$resultPack$config | ForEach-Object{$install + " " + $_ + " " + $params} | Invoke-Expression
        } elseif($response -like "n*") {Write-Output "Skipped Install.."}

        break;
}

# FUNCTIONS - END #