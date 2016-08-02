param
(
    [string] [Parameter(Mandatory = $true)]
    $ConnectedServiceNameSelector,

    [String] 
    $ConnectedServiceName,

    [String] 
    $ConnectedServiceNameARM,

    [String] [Parameter(Mandatory = $true)]
    $WebAppName,
    
    [String]
    $Slotname
)

Write-Host "Init Stop task"

Write-Host "ConnectedServiceNameSelector = $ConnectedServiceNameSelector"
Write-Host "ConnectedServiceName = $ConnectedServiceName"
Write-Host "ConnectedServiceNameARM = $ConnectedServiceNameARM"
Write-Host "WebAppName = $WebAppName"

# using production slot for website if website name provided does not contain any slot
# supports using slot explicitally, or using slot in app name or supplying no slot.
if ([String]::IsNullOrEmpty($Slotname))
{
    if($WebAppName -notlike '*(*)*')
    {
        $Slotname  = 'Production'
    }
}

Write-Host "Slot = $Slotname"

if ($Slotname){
    # Slot has been specified
    Write-Host "##[command]Get-AzureWebsite -Name $WebAppName -Slot $Slotname"
    $website = Get-AzureWebsite -Name $WebAppName -Slot $Slotname
    Write-Host "##[command]Stop-AzureWebsite -Name $WebAppName -Slot $Slotname"
    Stop-AzureWebsite -Name $WebAppName -Slot $Slotname
}else{
    # This case the app name contains the slot details
    Write-Host "##[command]Get-AzureWebsite -Name $WebAppName"
    $website = Get-AzureWebsite -Name $WebAppName
    Write-Host "##[command]Stop-AzureWebsite -Name $WebAppName"
    Stop-AzureWebsite -Name $WebAppName
}

Write-Host "Ending Stop task"