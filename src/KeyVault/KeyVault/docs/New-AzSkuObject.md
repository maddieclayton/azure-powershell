---
external help file: Az.KeyVault-help.xml
Module Name: Az.KeyVault
online version: https://docs.microsoft.com/en-us/powershell/module/az.keyvault/new-azskuobject
schema: 2.0.0
---

# New-AzSkuObject

## SYNOPSIS
Cmdlet to create an in-memory instance of the Sku object.

## SYNTAX

```
New-AzSkuObject [-Family] <SkuFamily> [-Name] <SkuName> [<CommonParameters>]
```

## DESCRIPTION
Cmdlet to create an in-memory instance of the Sku object.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Family
SKU family name

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.Support.SkuFamily
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
SKU name to specify whether the key vault is a standard vault or a premium vault.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.Support.SkuName
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20161001.ISku
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/en-us/powershell/module/az.keyvault/new-azskuobject](https://docs.microsoft.com/en-us/powershell/module/az.keyvault/new-azskuobject)

