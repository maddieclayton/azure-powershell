---
external help file: Az.KeyVault-help.xml
Module Name: Az.KeyVault
online version: https://docs.microsoft.com/en-us/powershell/module/az.keyvault/new-aznetworkrulesetobject
schema: 2.0.0
---

# New-AzNetworkRuleSetObject

## SYNOPSIS
Cmdlet to create an in-memory instance of the NetworkRuleSet object.

## SYNTAX

```
New-AzNetworkRuleSetObject [[-Bypass] <NetworkRuleBypassOptions>] [[-DefaultAction] <NetworkRuleAction>]
 [[-IPRules] <IIPRule[]>] [[-VirtualNetworkRules] <IVirtualNetworkRule[]>] [<CommonParameters>]
```

## DESCRIPTION
Cmdlet to create an in-memory instance of the NetworkRuleSet object.

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Add example code here }}
```

{{ Add example description here }}

## PARAMETERS

### -Bypass
Tells what traffic can bypass network rules.
This can be 'AzureServices' or 'None'.
If not specified the default is 'AzureServices'.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.Support.NetworkRuleBypassOptions
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -DefaultAction
The default action when no rule from ipRules and from virtualNetworkRules match.
This is only used after the bypass property has been evaluated.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.Support.NetworkRuleAction
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -IPRules
The list of IP address rules.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20180214.IIPRule[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -VirtualNetworkRules
The list of virtual network rules.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20180214.IVirtualNetworkRule[]
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20180214.INetworkRuleSet
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/en-us/powershell/module/az.keyvault/new-aznetworkrulesetobject](https://docs.microsoft.com/en-us/powershell/module/az.keyvault/new-aznetworkrulesetobject)

