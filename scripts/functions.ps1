clear-host

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
    Clear-Host;
    Write-Output "The following programs will be installed:"
    Write-Output '~~~~~~~~~~' 
    $programs = Get-Content $packagesPath$resultPack$configExt
    $i = 1
    $programs | ForEach-Object {
        Write-Output "$i. $_"
        $i++
    }
    Write-Output '~~~~~~~~~~'
    
    $selected = ChoosePrograms $programs
    
    Write-Output "The following programs will be installed:"
    Write-Output '~~~~~~~~~~' 
    Write-Output $selected
    Write-Output '~~~~~~~~~~'
    
    do {
        $response = read-host "Do you want to install the listed programs? ([Y]es/[N]o/[Q]uit)"
        switch -Wildcard ($response) 
        {
            "y**" { $selected | ForEach-Object{$installCommand + " " + $_ + " " + $installParams} | Invoke-Expression }
            "n*" { Write-Output "Skipped Install.."; Break }
            "q***" { Write-Output "Quitting.."; Exit }
            Default { Write-Output; "Bad Input"; Break } 
        }
    } until ($response -match "[a-z]")
    Write-Output "Returning.."; Clear-Host; Initiate; 
}

function ChoosePrograms($programs) {
    $selected = @()
    do {
        $response = read-host "Which programs do you want to install? (Enter numbers separated by commas or [A]ll/[N]one/[Q]uit)"
        switch -Wildcard ($response) 
        {
            "a*" { $selected = $programs; $validInput = $true }
            "n*" { Write-Output "Skipped Install.."; $validInput = $true }
            "q***" { Write-Output "Quitting.."; Exit }
            Default {
                $selectedIndices = $response.Split(",")
                $selected = @()
                foreach($index in $selectedIndices) {
                    if($index -match '^\d+$' -and $index -le $programs.Count) {
                        $selected += $programs[$index - 1]
                    }
                }
                if($selected.Count -gt 0) {
                    $validInput = $true
                } else {
                    Write-Output "Invalid input. Please enter valid program numbers or [A]ll/[N]one/[Q]uit."
                }
            } 
        }
    } until ($validInput)
    
    return $selected
}

#$packArray = New-Object System
$packArray = New-Object System.Collections.ArrayList
