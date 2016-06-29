param
(
    [string] [Parameter(Mandatory=$true)]
    $ConnectedServiceName,

    [String] [Parameter(Mandatory = $true)]
    $WebAppName
)

Write-Verbose "Init Stop task"

Write-Verbose "ConnectedServiceName = $ConnectedServiceName"
Write-Verbose "WebAppName = $WebAppName"

##Initialize-Azure
$website = Get-AzureWebsite -Name $WebAppName
Stop-AzureWebsite -Name $WebAppName

Write-Verbose "Ending Stop task"