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
[CmdletBinding(DefaultParameterSetName='SubscriptionEtc')]
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

    [Parameter(ParameterSetName='ResourceGroupNameEtc', Mandatory)]
    [Parameter(ParameterSetName='ResourceGroupNameSubscriptionIdEtc', Mandatory)]
    [Parameter(ParameterSetName='ResourceGroupNameSubscriptionIdTopEtc', Mandatory)]
    [Parameter(ParameterSetName='ResourceGroupNameTopEtc', Mandatory)]
    [Parameter(ParameterSetName='ResourceGroupNameVaultEtc', Mandatory)]
    [Parameter(ParameterSetName='ResourceGroupNameVaultSubscriptionIdEtc', Mandatory)]
    [System.String]
    # The name of the Resource Group to which the vault belongs.
    ${ResourceGroupName},

    [Parameter(ParameterSetName='ResourceGroupNameSubscriptionIdEtc', Mandatory)]
    [Parameter(ParameterSetName='ResourceGroupNameSubscriptionIdTopEtc', Mandatory)]
    [Parameter(ParameterSetName='ResourceGroupNameVaultSubscriptionIdEtc', Mandatory)]
    [Parameter(ParameterSetName='SubscriptionIdEtc', Mandatory)]
    [Parameter(ParameterSetName='SubscriptionIdTopEtc', Mandatory)]
    [Parameter(ParameterSetName='SubscriptionIdEtcEtc', Mandatory)]
    [Parameter(ParameterSetName='VaultNameLocationSubscriptionId', Mandatory)]
    [System.String]
    # Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
    ${SubscriptionId},

    [Parameter(ParameterSetName='ResourceGroupNameSubscriptionIdTopEtc', Mandatory)]
    [Parameter(ParameterSetName='ResourceGroupNameTopEtc', Mandatory)]
    [Parameter(ParameterSetName='SubscriptionIdTopEtc', Mandatory)]
    [Parameter(ParameterSetName='SubscriptionTopEtc', Mandatory)]
    [System.Int32]
    # Maximum number of results to return.
    ${Top},

    [Parameter(ParameterSetName='VaultNameLocation', Mandatory)]
    [Parameter(ParameterSetName='VaultNameLocationSubscriptionId', Mandatory)]
    [System.String]
    # The location of the deleted vault.
    ${Location},

    [Parameter(ParameterSetName='ResourceGroupNameVaultEtc', Mandatory)]
    [Parameter(ParameterSetName='ResourceGroupNameVaultSubscriptionIdEtc', Mandatory)]
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
        $parameterSet = $PsCmdlet.ParameterSetName
        $mapping = @{
            ResourceGroupNameEtc = 'Az.KeyVault.private\Get-AzKeyVault_ResourceGroupNameEtc';
            ResourceGroupNameSubscriptionIdEtc = 'Az.KeyVault.private\Get-AzKeyVault_ResourceGroupNameSubscriptionIdEtc';
            ResourceGroupNameSubscriptionIdTopEtc = 'Az.KeyVault.private\Get-AzKeyVault_ResourceGroupNameSubscriptionIdTopEtc';
            ResourceGroupNameTopEtc = 'Az.KeyVault.private\Get-AzKeyVault_ResourceGroupNameTopEtc';
            ResourceGroupNameVaultEtc = 'Az.KeyVault.private\Get-AzKeyVault_ResourceGroupNameVaultEtc';
            ResourceGroupNameVaultSubscriptionIdEtc = 'Az.KeyVault.private\Get-AzKeyVault_ResourceGroupNameVaultSubscriptionIdEtc';
            SubscriptionEtc = 'Az.KeyVault.private\Get-AzKeyVault_SubscriptionEtc';
            SubscriptionIdEtc = 'Az.KeyVault.private\Get-AzKeyVault_SubscriptionIdEtc';
            SubscriptionIdTopEtc = 'Az.KeyVault.private\Get-AzKeyVault_SubscriptionIdTopEtc';
            SubscriptionTopEtc = 'Az.KeyVault.private\Get-AzKeyVault_SubscriptionTopEtc';

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
