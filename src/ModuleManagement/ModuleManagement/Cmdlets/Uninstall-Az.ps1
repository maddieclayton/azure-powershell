# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.SYNOPSIS
Removes all modules of a particular type (Az, AzureRM, Azure, or AzureRM.Netcore)
#>
function Uninstall-Az
{
    [CmdletBinding(SupportsShouldProcess)]
    [OutputType([System.String])]
    param
    (
        [Parameter(Mandatory = $true)]
		[ValidateSet("Az", "AzureRM", "Azure", "AzureRM.Netcore")]
        [string]$ModuleName,

        [Parameter(Mandatory = $false)]
        [switch]$PassThru
    )

	if ($ModuleName -eq "AzureRM")
	{
		$Modules = @("Azure.AnalysisServices", "Azure.Storage", "AzureRM", "AzureRM.AnalysisServices", `
                "AzureRM.ApiManagement", "AzureRM.ApplicationInsights", "AzureRM.Automation", "AzureRM.Backup", "AzureRM.Batch", "AzureRM.Billing", `
                "AzureRM.Cdn", "AzureRM.CognitiveServices", "AzureRM.Compute", "AzureRM.Compute.Experiments", "AzureRM.Consumption", `
                "AzureRM.ContainerInstance", "AzureRM.ContainerRegistry", "AzureRM.DataFactories", "AzureRM.DataFactoryV2", "AzureRM.DataLakeAnalytics", `
                "AzureRM.DataLakeStore", "AzureRM.DataMigration", "AzureRM.DevTestLabs", "AzureRM.Dns", "AzureRM.EventGrid", "AzureRM.EventHub", `
                "AzureRM.HDInsight", "AzureRM.Insights", "AzureRM.IotHub", "AzureRM.KeyVault", "AzureRM.LogicApp", "AzureRM.MachineLearning", `
                "AzureRM.MachineLearningCompute", "AzureRM.ManagementPartner", "AzureRM.Maps", "AzureRM.MarketplaceOrdering", "AzureRM.Media", `
                "AzureRM.Network", "AzureRM.NotificationHubs", "AzureRM.OperationalInsights", "AzureRM.PolicyInsights", "AzureRM.PowerBIEmbedded", `
                "AzureRM.profile", "AzureRM.RecoveryServices", "AzureRM.RecoveryServices.Backup", "AzureRM.RecoveryServices.SiteRecovery", `
                "AzureRM.RedisCache", "AzureRM.Relay", "AzureRM.Reservations", "AzureRM.Resources", "AzureRM.Scheduler", "AzureRM.ServerManagement", `
                "AzureRM.ServiceBus", "AzureRM.ServiceFabric", "AzureRM.SignalR", "AzureRM.SiteRecovery", "AzureRM.Sql", "AzureRM.Storage", `
                "AzureRM.StreamAnalytics", "AzureRM.Subscription.Preview", "AzureRM.Tags", "AzureRM.TrafficManager", "AzureRM.UsageAggregates", `
                "AzureRM.Websites", "AzureRM.Websites.Experiments")
	}
	elseif ($ModuleName -eq "AzureRM.Netcore")
	{
		$Modules = @("AzureRM.Netcore", "AzureRM.PolicyInsights.Netcore", "AzureRM.Subscription.Netcore", "AzureRM.DeviceProvisioningServices.Netcore", `
				"Azure.Storage.Netcore", "AzureRM.Aks.Netcore", "AzureRM.AnalysisServices.Netcore", "Azure.AnalysisServices.Netcore", "AzureRM.ApiManagement.Netcore", `
				"AzureRM.ApplicationInsights.Netcore", "AzureRM.Automation.Netcore", "AzureRM.Backup.Netcore", "AzureRM.Batch.Netcore", "AzureRM.Billing.Netcore", `
				"AzureRM.Cdn.Netcore", "AzureRM.CognitiveServices.Netcore", "AzureRM.Compute.Netcore", "AzureRM.Consumption.Netcore", "AzureRM.ContainerInstance.Netcore", `
				"AzureRM.ContainerRegistry.Netcore", "AzureRM.DataLakeAnalytics.Netcore", "AzureRM.DataLakeStore.Netcore", "AzureRM.DevTestLabs.Netcore", `
				"AzureRM.Dns.Netcore", "AzureRM.EventGrid.Netcore", "AzureRM.EventHub.Netcore", "AzureRM.Insights.Netcore", "AzureRM.IotHub.Netcore", "AzureRM.KeyVault.Netcore", `
				"AzureRM.LogicApp.Netcore", "AzureRM.MachineLearning.Netcore", "AzureRM.MachineLearningCompute.Netcore", "AzureRM.MarketplaceOrdering.Netcore", `
				"AzureRM.Media.Netcore", "AzureRM.Network.Netcore", "AzureRM.NotificationHubs.Netcore", "AzureRM.OperationalInsights.Netcore", "AzureRM.PowerBIEmbedded.Netcore", `
				"AzureRM.Profile.Netcore", "AzureRM.Relay.Netcore", "AzureRM.Resources.Netcore", "AzureRM.ServiceBus.Netcore", "AzureRM.ServiceFabric.Netcore", `
				"AzureRM.Sql.Netcore", "AzureRM.Storage.Netcore", "AzureRM.StreamAnalytics.Netcore", "AzureRM.Tags.Netcore", "AzureRM.TrafficManager.Netcore", `
				"AzureRM.UsageAggregates.Netcore", "AzureRM.Websites.Netcore")
	}
	elseif ($ModuleName -eq "Az")
	{
		$Modules = Find-Module -Tag "AzPowerShellModule" -Repository PSGallery | Where-Object { $_.CompanyName -eq "azure-sdk" } | Select -Property Name
	}
	elseif ($ModuleName -eq "Azure")
	{
		$Modules = @("Azure")
	}

	$modulesInstalled = New-Object System.Collections.Generic.List[System.Object]
	$env:PSModulePath -split ";" | ForEach-Object {
		$modulesInstalled += Get-ChildItem $_ -ErrorAction SilentlyContinue
	}

	try
	{
		$modulesInstalled | ForEach-Object {
			if ($Modules.Contains($_.Name))
			{
				if ($PSCmdlet.ShouldProcess("Should remove module $($_)?")) {
					Remove-Item $_.FullName -Recurse -Force -ErrorAction Stop
					if ($PassThru) {
						Write-Output $_.Name
					}
				}
			}
		}
	}
	catch {
		Write-Error "Module deletion failed. Please close all PowerShell sessions to ensure no AzureRM modules are currently loaded, and rerun this cmdlet in Administrator mode."
	}
}