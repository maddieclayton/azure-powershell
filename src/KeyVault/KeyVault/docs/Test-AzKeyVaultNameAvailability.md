---
external help file: Az.KeyVault-help.xml
Module Name: Az.KeyVault
online version: https://docs.microsoft.com/en-us/powershell/module/az.keyvault/test-azkeyvaultnameavailability
schema: 2.0.0
---

# Test-AzKeyVaultNameAvailability

## SYNOPSIS
Checks that the vault name is valid and is not already in use.

## SYNTAX

### NameTypeExpanded (Default)
```
Test-AzKeyVaultNameAvailability [-DefaultProfile <PSObject>] -Name <String> -Type <Type> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### SubscriptionIdNameType
```
Test-AzKeyVaultNameAvailability [-DefaultProfile <PSObject>] -VaultName <IVaultCheckNameAvailabilityParameters>
 -SubscriptionId <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### NameType
```
Test-AzKeyVaultNameAvailability [-DefaultProfile <PSObject>] -VaultName <IVaultCheckNameAvailabilityParameters>
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### SubscriptionIdNameTypeExpanded
```
Test-AzKeyVaultNameAvailability [-DefaultProfile <PSObject>] -Name <String> -Type <Type>
 -SubscriptionId <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Checks that the vault name is valid and is not already in use.

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
The vault name.

```yaml
Type: System.String
Parameter Sets: NameTypeExpanded, SubscriptionIdNameTypeExpanded
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
Parameter Sets: SubscriptionIdNameType, SubscriptionIdNameTypeExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Type
The type of resource, Microsoft.KeyVault/vaults

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.Support.Type
Parameter Sets: NameTypeExpanded, SubscriptionIdNameTypeExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VaultName
The parameters used to check the availability of the vault name.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20180214.IVaultCheckNameAvailabilityParameters
Parameter Sets: SubscriptionIdNameType, NameType
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20180214.ICheckNameAvailabilityResult
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/en-us/powershell/module/az.keyvault/test-azkeyvaultnameavailability](https://docs.microsoft.com/en-us/powershell/module/az.keyvault/test-azkeyvaultnameavailability)

