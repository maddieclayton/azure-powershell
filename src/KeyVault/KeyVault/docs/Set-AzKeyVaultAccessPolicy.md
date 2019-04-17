---
external help file: Az.KeyVault-help.xml
Module Name: Az.KeyVault
online version: https://docs.microsoft.com/en-us/powershell/module/az.keyvault/set-azkeyvaultaccesspolicy
schema: 2.0.0
---

# Set-AzKeyVaultAccessPolicy

## SYNOPSIS
Update access policies in a key vault in the specified subscription.

## SYNTAX

### ResourceGroupNameVaultOperationKindPropertiesEtc (Default)
```
Set-AzKeyVaultAccessPolicy [-DefaultProfile <PSObject>] -OperationKind <AccessPolicyUpdateKind>
 -Parameters <IVaultAccessPolicyParameters> -ResourceGroupName <String> -VaultName <String> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### ResourceGroupNameVaultOperationKindSubscriptionIdPropertiesEtcEtc
```
Set-AzKeyVaultAccessPolicy [-DefaultProfile <PSObject>] -OperationKind <AccessPolicyUpdateKind>
 -Parameters <IVaultAccessPolicyParameters> -ResourceGroupName <String> -VaultName <String>
 -SubscriptionId <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ResourceGroupNameVaultOperationKindSubscriptionIdPropertiesEtcEtcEtc
```
Set-AzKeyVaultAccessPolicy [-DefaultProfile <PSObject>] -OperationKind <AccessPolicyUpdateKind>
 -ResourceGroupName <String> -VaultName <String> -AccessPolicies <IAccessPolicyEntry[]>
 -SubscriptionId <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ResourceGroupNameVaultOperationKindPropertiesExpandedEtc
```
Set-AzKeyVaultAccessPolicy [-DefaultProfile <PSObject>] -OperationKind <AccessPolicyUpdateKind>
 -ResourceGroupName <String> -VaultName <String> -AccessPolicies <IAccessPolicyEntry[]> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## DESCRIPTION
Update access policies in a key vault in the specified subscription.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -AccessPolicies
An array of 0 to 16 identities that have access to the key vault.
All identities in the array must use the same tenant ID as the key vault's tenant ID.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20180214.IAccessPolicyEntry[]
Parameter Sets: ResourceGroupNameVaultOperationKindSubscriptionIdPropertiesEtcEtcEtc, ResourceGroupNameVaultOperationKindPropertiesExpandedEtc
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

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

### -OperationKind
Name of the operation

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.Support.AccessPolicyUpdateKind
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Parameters
Parameters for updating the access policy in a vault

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20180214.IVaultAccessPolicyParameters
Parameter Sets: ResourceGroupNameVaultOperationKindPropertiesEtc, ResourceGroupNameVaultOperationKindSubscriptionIdPropertiesEtcEtc
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the Resource Group to which the vault belongs.

```yaml
Type: System.String
Parameter Sets: (All)
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
Parameter Sets: ResourceGroupNameVaultOperationKindSubscriptionIdPropertiesEtcEtc, ResourceGroupNameVaultOperationKindSubscriptionIdPropertiesEtcEtcEtc
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VaultName
Name of the vault

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
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

### Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20180214.IVaultAccessPolicyParameters
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/en-us/powershell/module/az.keyvault/set-azkeyvaultaccesspolicy](https://docs.microsoft.com/en-us/powershell/module/az.keyvault/set-azkeyvaultaccesspolicy)

