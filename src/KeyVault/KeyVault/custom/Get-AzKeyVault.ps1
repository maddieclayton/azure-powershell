<#
.Synopsis
The List operation gets information about the vaults associated with the subscription and within the specified resource group.
.Description
The List operation gets information about the vaults associated with the subscription and within the specified resource group.
.Link
https://docs.microsoft.com/en-us/powershell/module/az.keyvault/get-azkeyvault
#>
function Get-AzKeyVault {
[OutputType('Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20180214.IVault')]
[CmdletBinding(DefaultParameterSetName='__NoParameters')]
param(
    [Parameter(DontShow)]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.KeyVault.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.KeyVault.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials},

    [Parameter(ParameterSetName='SubscriptionIdEtcEtc', Mandatory)]
    [Parameter(ParameterSetName='VaultNameLocationSubscriptionId', Mandatory)]
    [System.String]
    # Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
    ${SubscriptionId},

    [Parameter(ParameterSetName='VaultNameLocation', Mandatory)]
    [Parameter(ParameterSetName='VaultNameLocationSubscriptionId', Mandatory)]
    [System.String]
    # The location of the deleted vault.
    ${Location},

    [Parameter(ParameterSetName='VaultNameLocation', Mandatory)]
    [Parameter(ParameterSetName='VaultNameLocationSubscriptionId', Mandatory)]
    [System.String]
    # The name of the vault.
    ${Name},

    [Parameter(ParameterSetName='VaultNameLocation', Mandatory)]
    [Parameter(ParameterSetName='VaultNameLocationSubscriptionId', Mandatory)]
    [Parameter(ParameterSetName='__NoParameters', Mandatory)]
    [Parameter(ParameterSetName='SubscriptionIdEtcEtc', Mandatory)]
    [System.Management.Automation.SwitchParameter]
    # Whether this cmdlet is getting a deleted vault
    ${InRemovedState}

)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $PSBoundParameters.Remove("InRemovedState") | Out-Null
        $parameterSet = $PsCmdlet.ParameterSetName
        $mapping = @{
            __NoParameters = 'Az.KeyVault.private\Get-AzKeyVaultDeleted';
            SubscriptionIdEtcEtc = 'Az.KeyVault.private\Get-AzKeyVaultDeleted_SubscriptionIdEtcEtc';
            VaultNameLocation = 'Az.KeyVault.private\Get-AzKeyVaultDeleted_VaultNameLocation';
            VaultNameLocationSubscriptionId = 'Az.KeyVault.private\Get-AzKeyVaultDeleted_VaultNameLocationSubscriptionId';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($myInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}
