---
external help file: Az.KeyVault-help.xml
Module Name: Az.KeyVault
online version: https://docs.microsoft.com/en-us/powershell/module/az.keyvault/get-azkeyvault
schema: 2.0.0
---

# Get-AzKeyVault

## SYNOPSIS
The List operation gets information about the vaults associated with the subscription and within the specified resource group.

## SYNTAX

### SubscriptionEtc (Default)
```
Get-AzKeyVault [-DefaultProfile <PSObject>] [<CommonParameters>]
```

### SubscriptionTopEtc
```
Get-AzKeyVault [-DefaultProfile <PSObject>] -Top <Int32> [<CommonParameters>]
```

### SubscriptionIdTopEtc
```
Get-AzKeyVault [-DefaultProfile <PSObject>] -SubscriptionId <String> -Top <Int32> [<CommonParameters>]
```

### SubscriptionIdEtc
```
Get-AzKeyVault [-DefaultProfile <PSObject>] -SubscriptionId <String> [<CommonParameters>]
```

### ResourceGroupNameVaultSubscriptionIdEtc
```
Get-AzKeyVault [-DefaultProfile <PSObject>] -ResourceGroupName <String> -SubscriptionId <String> -Name <String>
 [<CommonParameters>]
```

### ResourceGroupNameVaultEtc
```
Get-AzKeyVault [-DefaultProfile <PSObject>] -ResourceGroupName <String> -Name <String> [<CommonParameters>]
```

### ResourceGroupNameTopEtc
```
Get-AzKeyVault [-DefaultProfile <PSObject>] -ResourceGroupName <String> -Top <Int32> [<CommonParameters>]
```

### ResourceGroupNameSubscriptionIdTopEtc
```
Get-AzKeyVault [-DefaultProfile <PSObject>] -ResourceGroupName <String> -SubscriptionId <String> -Top <Int32>
 [<CommonParameters>]
```

### ResourceGroupNameSubscriptionIdEtc
```
Get-AzKeyVault [-DefaultProfile <PSObject>] -ResourceGroupName <String> -SubscriptionId <String>
 [<CommonParameters>]
```

### ResourceGroupNameEtc
```
Get-AzKeyVault [-DefaultProfile <PSObject>] -ResourceGroupName <String> [<CommonParameters>]
```

### SubscriptionIdEtcEtc
```
Get-AzKeyVault -SubscriptionId <String> [-InRemovedState] [<CommonParameters>]
```

### VaultNameLocationSubscriptionId
```
Get-AzKeyVault -SubscriptionId <String> -Name <String> -Location <String> [-InRemovedState]
 [<CommonParameters>]
```

### VaultNameLocation
```
Get-AzKeyVault -Name <String> -Location <String> [-InRemovedState] [<CommonParameters>]
```

### __NoParameters
```
Get-AzKeyVault [-InRemovedState] [<CommonParameters>]
```

## DESCRIPTION
The List operation gets information about the vaults associated with the subscription and within the specified resource group.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -DefaultProfile
The credentials, account, tenant, and subscription used for communication with Azure.

```yaml
Type: System.Management.Automation.PSObject
Parameter Sets: SubscriptionEtc, SubscriptionTopEtc, SubscriptionIdTopEtc, SubscriptionIdEtc, ResourceGroupNameVaultSubscriptionIdEtc, ResourceGroupNameVaultEtc, ResourceGroupNameTopEtc, ResourceGroupNameSubscriptionIdTopEtc, ResourceGroupNameSubscriptionIdEtc, ResourceGroupNameEtc
Aliases: AzureRMContext, AzureCredential

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -InRemovedState
{{ Fill InRemovedState Description }}

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: SubscriptionIdEtcEtc, VaultNameLocationSubscriptionId, VaultNameLocation, __NoParameters
Aliases:

Required: True
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### -Location
{{ Fill Location Description }}

```yaml
Type: System.String
Parameter Sets: VaultNameLocationSubscriptionId, VaultNameLocation
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the vault.

```yaml
Type: System.String
Parameter Sets: ResourceGroupNameVaultSubscriptionIdEtc, ResourceGroupNameVaultEtc, VaultNameLocationSubscriptionId, VaultNameLocation
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the Resource Group to which the vault belongs.

```yaml
Type: System.String
Parameter Sets: ResourceGroupNameVaultSubscriptionIdEtc, ResourceGroupNameVaultEtc, ResourceGroupNameTopEtc, ResourceGroupNameSubscriptionIdTopEtc, ResourceGroupNameSubscriptionIdEtc, ResourceGroupNameEtc
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SubscriptionId
Subscription credentials which uniquely identify Microsoft Azure subscription.
The subscription ID forms part of the URI for every service call.

```yaml
Type: System.String
Parameter Sets: SubscriptionIdTopEtc, SubscriptionIdEtc, ResourceGroupNameVaultSubscriptionIdEtc, ResourceGroupNameSubscriptionIdTopEtc, ResourceGroupNameSubscriptionIdEtc, SubscriptionIdEtcEtc, VaultNameLocationSubscriptionId
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Top
Maximum number of results to return.

```yaml
Type: System.Int32
Parameter Sets: SubscriptionTopEtc, SubscriptionIdTopEtc, ResourceGroupNameTopEtc, ResourceGroupNameSubscriptionIdTopEtc
Aliases:

Required: True
Position: Named
Default value: 0
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20180214.IVault
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/en-us/powershell/module/az.keyvault/get-azkeyvault](https://docs.microsoft.com/en-us/powershell/module/az.keyvault/get-azkeyvault)

