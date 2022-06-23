
# FUNCTIONS - START # 

function Initiate {
    Write-Output '~~~~~~~~~~'
    Write-Output $packArray
    Write-Output '~~~~~~~~~~'
    ValidateResponse
}

function ValidateResponse($resultPack) {
        do {
            $response = read-host -Prompt $msg
            if($packList -match $response)
            {      
                $validResponse = 1
                foreach($pack in $packList)
                {
                    if($response -eq $pack) {
                        $resultPack = $pack
                        RunInstaller
                    } 
                } 
            }
            elseif ($response -le $numberRange) 
            {
                $validResponse = 1
                foreach($pack in $packArray)
                {
                    if($response -eq $pack[1]) {
                        $pack = $pack[4..99] -join ''
                        $resultPack = $pack 
                        RunInstaller 
                    } 
                }
            } 
            Write-Output "Input is Invalid"
        } until ($validResponse -eq 1) 
}

function GetFiles {
    foreach($pack in $packList)
    {
        $i++
        $format = $pack.Substring(0,1).ToUpper() + $pack.Substring(1)
        $newItem = "(" + $i.ToString() + ")" + " " + $format
        $packArray.add($newItem) | out-null
    }
}

function RunInstaller {
        Write-Output "The following programs will be installed:"
        Write-Output '~~~~~~~~~~' 
        Get-Content $packages$resultPack$config
        Write-Output '~~~~~~~~~~'
        do {
            $response = read-host "Do you want to install the listed programs? ([Y]es/[N]o/[Q]uit)"
            switch -Wildcard ($response) 
            {
                "y**" { Get-Content $packages$resultPack$config  | ForEach-Object{$install + " " + $_ + " " + $params} <#| Invoke-Expression#> }
                "n*" { Write-Output "Skipped Install.."; Break }
                "q***" { Write-Output "Quitting.."; Exit }
                Default { Write-Output; "Bad Input"; Break } 
            }
        } until ($response -match "[a-z]")
        Write-Output "Returning.."; Initiate; Clear-Host;
}

# FUNCTIONS - END #