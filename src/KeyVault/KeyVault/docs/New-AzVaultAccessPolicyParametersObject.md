---
external help file: Az.KeyVault-help.xml
Module Name: Az.KeyVault
online version: https://docs.microsoft.com/en-us/powershell/module/az.keyvault/new-azvaultaccesspolicyparametersobject
schema: 2.0.0
---

# New-AzVaultAccessPolicyParametersObject

## SYNOPSIS
Cmdlet to create an in-memory instance of the VaultAccessPolicyParameters object.

## SYNTAX

```
New-AzVaultAccessPolicyParametersObject [-AccessPolicies] <IAccessPolicyEntry[]> [<CommonParameters>]
```

## DESCRIPTION
Cmdlet to create an in-memory instance of the VaultAccessPolicyParameters object.

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
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20161001.IAccessPolicyEntry[]
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20161001.IVaultAccessPolicyParameters
### Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20180214.IVaultAccessPolicyParameters
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/en-us/powershell/module/az.keyvault/new-azvaultaccesspolicyparametersobject](https://docs.microsoft.com/en-us/powershell/module/az.keyvault/new-azvaultaccesspolicyparametersobject)

