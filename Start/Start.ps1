param
(
    [string] [Parameter(Mandatory=$true)]
    $ConnectedServiceName,

    [String] [Parameter(Mandatory = $true)]
    $WebAppName
)

Write-Verbose "Init Start task"

Write-Verbose "ConnectedServiceName = $ConnectedServiceName"
Write-Verbose "WebAppName = $WebAppName"

##Initialize-Azure
$website = Get-AzureWebsite -Name $WebAppName
Start-AzureWebsite -Name $WebAppName

Write-Verbose "Ending Start task"