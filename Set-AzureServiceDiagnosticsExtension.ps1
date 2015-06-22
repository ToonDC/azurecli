$serviceName = "cloudServiceName"
$storageAccount = "storageAccountName"
$diagnosticsConfigPath = "C:\TEMP\DEMO\Microsoft.Contoso.Devision.ProjectCodeName\Microsoft.Contoso.Department.ProjectCodeName\bin\Release\app.publish\Extensions\PaaSDiagnostics.Microsoft.Contoso.Department.ProjectCodeName.Web.PubConfig.xml"
$azureWebRoleName = "Microsoft.Contoso.Department.ProjectCodeName.Web"
$slot = "Production"

$primaryStorageKey = (Get-AzureStorageKey -StorageAccountName "$storageAccount").Primary
$storageContext = New-AzureStorageContext -StorageAccountName $storageAccount -StorageAccountKey $primaryStorageKey

Set-AzureServiceDiagnosticsExtension -ServiceName $serviceName -StorageContext $storageContext -Slot $slot -DiagnosticsConfigurationPath $diagnosticsConfigPath -Role $azureWebRoleName