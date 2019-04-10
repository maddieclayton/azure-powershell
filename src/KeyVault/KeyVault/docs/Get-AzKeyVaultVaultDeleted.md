---
external help file: Az.KeyVault-help.xml
Module Name: Az.KeyVault
online version: https://docs.microsoft.com/en-us/powershell/module/az.keyvault/get-azkeyvaultvaultdeleted
schema: 2.0.0
---

# Get-AzKeyVaultVaultDeleted

## SYNOPSIS
Gets information about the deleted vaults in a subscription.

## SYNTAX

### __NoParameters (Default)
```
Get-AzKeyVaultVaultDeleted [-DefaultProfile <PSObject>] [<CommonParameters>]
```

### VaultNameLocationSubscriptionId
```
Get-AzKeyVaultVaultDeleted [-DefaultProfile <PSObject>] -SubscriptionId <String> -Location <String>
 -VaultName <String> [<CommonParameters>]
```

### SubscriptionIdEtcEtc
```
Get-AzKeyVaultVaultDeleted [-DefaultProfile <PSObject>] -SubscriptionId <String> [<CommonParameters>]
```

### VaultNameLocation
```
Get-AzKeyVaultVaultDeleted [-DefaultProfile <PSObject>] -Location <String> -VaultName <String>
 [<CommonParameters>]
```

## DESCRIPTION
Gets information about the deleted vaults in a subscription.

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

### -Location
The location of the deleted vault.

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

### -SubscriptionId
Subscription credentials which uniquely identify Microsoft Azure subscription.
The subscription ID forms part of the URI for every service call.

```yaml
Type: System.String
Parameter Sets: VaultNameLocationSubscriptionId, SubscriptionIdEtcEtc
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VaultName
The name of the vault.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20180214.IDeletedVault
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/en-us/powershell/module/az.keyvault/get-azkeyvaultvaultdeleted](https://docs.microsoft.com/en-us/powershell/module/az.keyvault/get-azkeyvaultvaultdeleted)

