$subscriptionId = "Subscription Id GUID"
$serviceName = "cloudServiceName"
$storageAccount = "storageAccountName"
$servicePackageFile = "C:\TEMP\DEMO\Microsoft.Contoso.Devision.ProjectCodeName\Microsoft.Contoso.Department.ProjectCodeName\bin\Release\app.publish\Microsoft.Contoso.Department.ProjectCodeName.cspkg"
$serviceConfigFile = "C:\TEMP\DEMO\Microsoft.Contoso.Devision.ProjectCodeName\Microsoft.Contoso.Department.ProjectCodeName\bin\Release\app.publish\ServiceConfiguration.Cloud.cscfg"
$slot = "Staging"
$azureWebRoleName = "Microsoft.Contoso.Department.ProjectCodeName.Web"
$diagnosticsConfigPath = "C:\TEMP\DEMO\Microsoft.Contoso.Devision.ProjectCodeName\Microsoft.Contoso.Department.ProjectCodeName\bin\Release\app.publish\Extensions\PaaSDiagnostics.Microsoft.Contoso.Department.ProjectCodeName.Web.PubConfig.xml"

Set-AzureSubscription -SubscriptionId $subscriptionId -CurrentStorageAccountName $storageAccount -Environment AzureCloud

$primaryStorageKey = (Get-AzureStorageKey -StorageAccountName "$storageAccount").Primary
$storageContext = New-AzureStorageContext -StorageAccountName $storageAccount -StorageAccountKey $primaryStorageKey

$webRoleConfig = New-AzureServiceDiagnosticsExtensionConfig -StorageContext $storageContext -DiagnosticsConfigurationPath $diagnosticsConfigPath -role $azureWebRoleName

$diagnosticExtensions = @($webRoleConfig)

$azureDeployment = New-AzureDeployment -ServiceName $serviceName -Package $servicePackageFile -Configuration $serviceConfigFile -Slot $slot -ExtensionConfiguration $diagnosticExtensions