@{
# region definition
  RootModule = './Az.KeyVault.psm1'
  ModuleVersion = '0.0.1'
  CompatiblePSEditions = 'Core', 'Desktop'
  Author = 'Microsoft Corporation'
  CompanyName = 'Microsoft Corporation'
  Copyright = 'Microsoft Corporation. All rights reserved.'
  Description = 'Microsoft Azure PowerShell: KeyVault cmdlets'
  PowerShellVersion = '5.1'
  DotNetFrameworkVersion = '4.7.2'
  RequiredAssemblies = './bin/Az.KeyVault.private.dll'
  FormatsToProcess = './Az.KeyVault.format.ps1xml'
# endregion

# region persistent data
  GUID = '8c28919b-98cf-4ac4-8a55-8aef01b712c5'
# endregion

# region private data
  PrivateData = @{
    PSData = @{
      Tags = 'Azure', 'ResourceManager', 'ARM', 'KeyVault'
      LicenseUri = 'https://aka.ms/azps-license'
      ProjectUri = 'https://github.com/Azure/azure-powershell'
      ReleaseNotes = ''
      Profiles = 'latest-2019-04-01', 'hybrid-2019'
    }
  }
# endregion

# region exports
  CmdletsToExport = 'Clear-AzKeyVaultVaultDeleted', 'Get-AzKeyVaultVault', 'Get-AzKeyVaultVaultDeleted', 'New-AzKeyVaultVault', 'Remove-AzKeyVaultVault', 'Set-AzKeyVaultVault', 'Set-AzKeyVaultVaultAccessPolicy', 'Test-AzKeyVaultVaultNameAvailability', 'Update-AzKeyVaultVault', '*'
# endregion

}