---
external help file: Az.KeyVault-help.xml
Module Name: Az.KeyVault
online version: https://docs.microsoft.com/en-us/powershell/module/az.keyvault/get-azkeyvaultvault
schema: 2.0.0
---

# Get-AzKeyVaultVault

## SYNOPSIS
The List operation gets information about the vaults associated with the subscription and within the specified resource group.

## SYNTAX

### SubscriptionEtc (Default)
```
Get-AzKeyVaultVault [-DefaultProfile <PSObject>] [<CommonParameters>]
```

### ResourceGroupNameVaultSubscriptionIdEtc
```
Get-AzKeyVaultVault [-DefaultProfile <PSObject>] -ResourceGroupName <String> -SubscriptionId <String>
 -Name <String> [<CommonParameters>]
```

### ResourceGroupNameVaultEtc
```
Get-AzKeyVaultVault [-DefaultProfile <PSObject>] -ResourceGroupName <String> -Name <String>
 [<CommonParameters>]
```

### ResourceGroupNameTopEtc
```
Get-AzKeyVaultVault [-DefaultProfile <PSObject>] -ResourceGroupName <String> -Top <Int32> [<CommonParameters>]
```

### ResourceGroupNameSubscriptionIdTopEtc
```
Get-AzKeyVaultVault [-DefaultProfile <PSObject>] -ResourceGroupName <String> -SubscriptionId <String>
 -Top <Int32> [<CommonParameters>]
```

### ResourceGroupNameSubscriptionIdEtc
```
Get-AzKeyVaultVault [-DefaultProfile <PSObject>] -ResourceGroupName <String> -SubscriptionId <String>
 [<CommonParameters>]
```

### ResourceGroupNameEtc
```
Get-AzKeyVaultVault [-DefaultProfile <PSObject>] -ResourceGroupName <String> [<CommonParameters>]
```

### SubscriptionIdTopEtc
```
Get-AzKeyVaultVault [-DefaultProfile <PSObject>] -SubscriptionId <String> -Top <Int32> [<CommonParameters>]
```

### SubscriptionIdEtc
```
Get-AzKeyVaultVault [-DefaultProfile <PSObject>] -SubscriptionId <String> [<CommonParameters>]
```

### SubscriptionTopEtc
```
Get-AzKeyVaultVault [-DefaultProfile <PSObject>] -Top <Int32> [<CommonParameters>]
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
Parameter Sets: (All)
Aliases: AzureRMContext, AzureCredential

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
The name of the vault.

```yaml
Type: System.String
Parameter Sets: ResourceGroupNameVaultSubscriptionIdEtc, ResourceGroupNameVaultEtc
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
Parameter Sets: ResourceGroupNameVaultSubscriptionIdEtc, ResourceGroupNameSubscriptionIdTopEtc, ResourceGroupNameSubscriptionIdEtc, SubscriptionIdTopEtc, SubscriptionIdEtc
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
Parameter Sets: ResourceGroupNameTopEtc, ResourceGroupNameSubscriptionIdTopEtc, SubscriptionIdTopEtc, SubscriptionTopEtc
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

[https://docs.microsoft.com/en-us/powershell/module/az.keyvault/get-azkeyvaultvault](https://docs.microsoft.com/en-us/powershell/module/az.keyvault/get-azkeyvaultvault)

