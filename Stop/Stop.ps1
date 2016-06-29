param
(
    [string] [Parameter(Mandatory = $true)]
    $ConnectedServiceNameSelector,

    [String] 
    $ConnectedServiceName,

    [String] 
    $ConnectedServiceNameARM,

    [String] [Parameter(Mandatory = $true)]
    $WebAppName
)

Write-Verbose "Init Stop task"

Write-Verbose "ConnectedServiceNameSelector = $ConnectedServiceNameSelector"
Write-Verbose "ConnectedServiceName = $ConnectedServiceName"
Write-Verbose "ConnectedServiceNameARM = $ConnectedServiceNameARM"
Write-Verbose "WebAppName = $WebAppName"

##Initialize-Azure
$website = Get-AzureWebsite -Name $WebAppName
Stop-AzureWebsite -Name $WebAppName

Write-Verbose "Ending Stop task"