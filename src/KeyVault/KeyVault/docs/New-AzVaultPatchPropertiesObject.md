---
external help file: Az.KeyVault-help.xml
Module Name: Az.KeyVault
online version: https://docs.microsoft.com/en-us/powershell/module/az.keyvault/new-azvaultpatchpropertiesobject
schema: 2.0.0
---

# New-AzVaultPatchPropertiesObject

## SYNOPSIS
Cmdlet to create an in-memory instance of the VaultPatchProperties object.

## SYNTAX

### Api20161001 (Default)
```
New-AzVaultPatchPropertiesObject [-AccessPolicies <IAccessPolicyEntry[]>] [-CreateMode <CreateMode>]
 [-EnablePurgeProtection <Boolean>] [-EnableSoftDelete <Boolean>] [-EnabledForDeployment <Boolean>]
 [-EnabledForDiskEncryption <Boolean>] [-EnabledForTemplateDeployment <Boolean>] -SkuFamily <SkuFamily>
 -SkuName <SkuName> [-TenantId <String>] [<CommonParameters>]
```

### Api20180214
```
New-AzVaultPatchPropertiesObject [-AccessPolicies <IAccessPolicyEntry[]>] [-CreateMode <CreateMode>]
 [-EnablePurgeProtection <Boolean>] [-EnableSoftDelete <Boolean>] [-EnabledForDeployment <Boolean>]
 [-EnabledForDiskEncryption <Boolean>] [-EnabledForTemplateDeployment <Boolean>] -SkuFamily <SkuFamily>
 -SkuName <SkuName> [-TenantId <String>] [-NetworkAclsBypass <NetworkRuleBypassOptions>]
 [-NetworkAclsDefaultAction <NetworkRuleAction>] [-NetworkAclsIPRules <IIPRule[]>]
 [-NetworkAclsVirtualNetworkRules <IVirtualNetworkRule[]>] [<CommonParameters>]
```

## DESCRIPTION
Cmdlet to create an in-memory instance of the VaultPatchProperties object.

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

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -CreateMode
The vault's create mode to indicate whether the vault need to be recovered or not.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.Support.CreateMode
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnabledForDeployment
Property to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault.

```yaml
Type: System.Nullable`1[System.Boolean]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnabledForDiskEncryption
Property to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys.

```yaml
Type: System.Nullable`1[System.Boolean]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnabledForTemplateDeployment
Property to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault.

```yaml
Type: System.Nullable`1[System.Boolean]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnablePurgeProtection
Property specifying whether protection against purge is enabled for this vault; it is only effective if soft delete is also enabled.
Once activated, the property may no longer be reset to false.

```yaml
Type: System.Nullable`1[System.Boolean]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnableSoftDelete
Property specifying whether recoverable deletion ('soft' delete) is enabled for this key vault.
The property may not be set to false.

```yaml
Type: System.Nullable`1[System.Boolean]
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NetworkAclsBypass
Tells what traffic can bypass network rules.
This can be 'AzureServices' or 'None'.
If not specified the default is 'AzureServices'.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.Support.NetworkRuleBypassOptions
Parameter Sets: Api20180214
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NetworkAclsDefaultAction
The default action when no rule from ipRules and from virtualNetworkRules match.
This is only used after the bypass property has been evaluated.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.Support.NetworkRuleAction
Parameter Sets: Api20180214
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NetworkAclsIPRules
The list of IP address rules.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20180214.IIPRule[]
Parameter Sets: Api20180214
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -NetworkAclsVirtualNetworkRules
The list of virtual network rules.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20180214.IVirtualNetworkRule[]
Parameter Sets: Api20180214
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkuFamily
SKU family name

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.Support.SkuFamily
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -SkuName
SKU name to specify whether the key vault is a standard vault or a premium vault.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.Support.SkuName
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TenantId
The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.

```yaml
Type: System.String
Parameter Sets: (All)
Aliases:

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

### Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20161001.IVaultPatchProperties
### Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20180214.IVaultPatchProperties
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/en-us/powershell/module/az.keyvault/new-azvaultpatchpropertiesobject](https://docs.microsoft.com/en-us/powershell/module/az.keyvault/new-azvaultpatchpropertiesobject)

