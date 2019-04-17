---
external help file: Az.KeyVault-help.xml
Module Name: Az.KeyVault
online version: https://docs.microsoft.com/en-us/powershell/module/az.keyvault/update-azkeyvault
schema: 2.0.0
---

# Update-AzKeyVault

## SYNOPSIS
Update a key vault in the specified subscription.

## SYNTAX

### ResourceGroupNameVaultPropertiesTags (Default)
```
Update-AzKeyVault [-DefaultProfile <PSObject>] -Name <String> -Parameters <IVaultPatchParameters>
 -ResourceGroupName <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ResourceGroupNameVaultSubscriptionIdPropertiesTags
```
Update-AzKeyVault [-DefaultProfile <PSObject>] -Name <String> -Parameters <IVaultPatchParameters>
 -ResourceGroupName <String> -SubscriptionId <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ResourceGroupNameVaultSubscriptionIdPropertiesTagsExpanded
```
Update-AzKeyVault [-DefaultProfile <PSObject>] -Name <String> -ResourceGroupName <String>
 [-AccessPolicies <IAccessPolicyEntry[]>] [-CreateMode <CreateMode>] [-EnablePurgeProtection <Boolean>]
 [-EnableSoftDelete <Boolean>] [-EnabledForDeployment <Boolean>] [-EnabledForDiskEncryption <Boolean>]
 [-EnabledForTemplateDeployment <Boolean>] [-NetworkAclsBypass <NetworkRuleBypassOptions>]
 [-NetworkAclsDefaultAction <NetworkRuleAction>] [-NetworkAclsIPRules <IIPRule[]>]
 [-NetworkAclsVirtualNetworkRules <IVirtualNetworkRule[]>] -SkuFamily <SkuFamily> -SkuName <SkuName>
 [-Tag <Hashtable>] [-TenantId <String>] -SubscriptionId <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ResourceGroupNameVaultPropertiesTagsExpanded
```
Update-AzKeyVault [-DefaultProfile <PSObject>] -Name <String> -ResourceGroupName <String>
 [-AccessPolicies <IAccessPolicyEntry[]>] [-CreateMode <CreateMode>] [-EnablePurgeProtection <Boolean>]
 [-EnableSoftDelete <Boolean>] [-EnabledForDeployment <Boolean>] [-EnabledForDiskEncryption <Boolean>]
 [-EnabledForTemplateDeployment <Boolean>] [-NetworkAclsBypass <NetworkRuleBypassOptions>]
 [-NetworkAclsDefaultAction <NetworkRuleAction>] [-NetworkAclsIPRules <IIPRule[]>]
 [-NetworkAclsVirtualNetworkRules <IVirtualNetworkRule[]>] -SkuFamily <SkuFamily> -SkuName <SkuName>
 [-Tag <Hashtable>] [-TenantId <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
Update a key vault in the specified subscription.

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
Parameter Sets: ResourceGroupNameVaultSubscriptionIdPropertiesTagsExpanded, ResourceGroupNameVaultPropertiesTagsExpanded
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
Parameter Sets: ResourceGroupNameVaultSubscriptionIdPropertiesTagsExpanded, ResourceGroupNameVaultPropertiesTagsExpanded
Aliases:

Required: False
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

### -EnabledForDeployment
Property to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault.

```yaml
Type: System.Nullable`1[System.Boolean]
Parameter Sets: ResourceGroupNameVaultSubscriptionIdPropertiesTagsExpanded, ResourceGroupNameVaultPropertiesTagsExpanded
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
Parameter Sets: ResourceGroupNameVaultSubscriptionIdPropertiesTagsExpanded, ResourceGroupNameVaultPropertiesTagsExpanded
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
Parameter Sets: ResourceGroupNameVaultSubscriptionIdPropertiesTagsExpanded, ResourceGroupNameVaultPropertiesTagsExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnablePurgeProtection
Property specifying whether protection against purge is enabled for this vault.
Setting this property to true activates protection against purge for this vault and its content - only the Key Vault service may initiate a hard, irrecoverable deletion.
The setting is effective only if soft delete is also enabled.
Enabling this functionality is irreversible - that is, the property does not accept false as its value.

```yaml
Type: System.Nullable`1[System.Boolean]
Parameter Sets: ResourceGroupNameVaultSubscriptionIdPropertiesTagsExpanded, ResourceGroupNameVaultPropertiesTagsExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -EnableSoftDelete
Property to specify whether the 'soft delete' functionality is enabled for this key vault.
It does not accept false value.

```yaml
Type: System.Nullable`1[System.Boolean]
Parameter Sets: ResourceGroupNameVaultSubscriptionIdPropertiesTagsExpanded, ResourceGroupNameVaultPropertiesTagsExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Name
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

### -NetworkAclsBypass
Tells what traffic can bypass network rules.
This can be 'AzureServices' or 'None'.
If not specified the default is 'AzureServices'.

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.Support.NetworkRuleBypassOptions
Parameter Sets: ResourceGroupNameVaultSubscriptionIdPropertiesTagsExpanded, ResourceGroupNameVaultPropertiesTagsExpanded
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
Parameter Sets: ResourceGroupNameVaultSubscriptionIdPropertiesTagsExpanded, ResourceGroupNameVaultPropertiesTagsExpanded
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
Parameter Sets: ResourceGroupNameVaultSubscriptionIdPropertiesTagsExpanded, ResourceGroupNameVaultPropertiesTagsExpanded
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
Parameter Sets: ResourceGroupNameVaultSubscriptionIdPropertiesTagsExpanded, ResourceGroupNameVaultPropertiesTagsExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Parameters
Parameters for creating or updating a vault

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20180214.IVaultPatchParameters
Parameter Sets: ResourceGroupNameVaultPropertiesTags, ResourceGroupNameVaultSubscriptionIdPropertiesTags
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -ResourceGroupName
The name of the Resource Group to which the server belongs.

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

### -SkuFamily
SKU family name

```yaml
Type: Microsoft.Azure.PowerShell.Cmdlets.KeyVault.Support.SkuFamily
Parameter Sets: ResourceGroupNameVaultSubscriptionIdPropertiesTagsExpanded, ResourceGroupNameVaultPropertiesTagsExpanded
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
Parameter Sets: ResourceGroupNameVaultSubscriptionIdPropertiesTagsExpanded, ResourceGroupNameVaultPropertiesTagsExpanded
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
Parameter Sets: ResourceGroupNameVaultSubscriptionIdPropertiesTags, ResourceGroupNameVaultSubscriptionIdPropertiesTagsExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Tag
The tags that will be assigned to the key vault.

```yaml
Type: System.Collections.Hashtable
Parameter Sets: ResourceGroupNameVaultSubscriptionIdPropertiesTagsExpanded, ResourceGroupNameVaultPropertiesTagsExpanded
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -TenantId
The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault.

```yaml
Type: System.String
Parameter Sets: ResourceGroupNameVaultSubscriptionIdPropertiesTagsExpanded, ResourceGroupNameVaultPropertiesTagsExpanded
Aliases:

Required: False
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

### Microsoft.Azure.PowerShell.Cmdlets.KeyVault.ModelsApi20180214.IVault
## NOTES

## RELATED LINKS

[https://docs.microsoft.com/en-us/powershell/module/az.keyvault/update-azkeyvault](https://docs.microsoft.com/en-us/powershell/module/az.keyvault/update-azkeyvault)

