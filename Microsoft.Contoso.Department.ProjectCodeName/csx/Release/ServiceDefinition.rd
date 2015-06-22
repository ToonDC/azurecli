<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="Microsoft.Contoso.Devision.ProjectCodeName" generation="1" functional="0" release="0" Id="307786ed-34f0-4d7a-8be3-5941da0f7af3" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="Microsoft.Contoso.Devision.ProjectCodeNameGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="Microsoft.Contoso.Department.ProjectCodeName.Web:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/Microsoft.Contoso.Devision.ProjectCodeName/Microsoft.Contoso.Devision.ProjectCodeNameGroup/LB:Microsoft.Contoso.Department.ProjectCodeName.Web:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="Microsoft.Contoso.Department.ProjectCodeName.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/Microsoft.Contoso.Devision.ProjectCodeName/Microsoft.Contoso.Devision.ProjectCodeNameGroup/MapMicrosoft.Contoso.Department.ProjectCodeName.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="Microsoft.Contoso.Department.ProjectCodeName.WebInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/Microsoft.Contoso.Devision.ProjectCodeName/Microsoft.Contoso.Devision.ProjectCodeNameGroup/MapMicrosoft.Contoso.Department.ProjectCodeName.WebInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:Microsoft.Contoso.Department.ProjectCodeName.Web:Endpoint1">
          <toPorts>
            <inPortMoniker name="/Microsoft.Contoso.Devision.ProjectCodeName/Microsoft.Contoso.Devision.ProjectCodeNameGroup/Microsoft.Contoso.Department.ProjectCodeName.Web/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapMicrosoft.Contoso.Department.ProjectCodeName.Web:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/Microsoft.Contoso.Devision.ProjectCodeName/Microsoft.Contoso.Devision.ProjectCodeNameGroup/Microsoft.Contoso.Department.ProjectCodeName.Web/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapMicrosoft.Contoso.Department.ProjectCodeName.WebInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/Microsoft.Contoso.Devision.ProjectCodeName/Microsoft.Contoso.Devision.ProjectCodeNameGroup/Microsoft.Contoso.Department.ProjectCodeName.WebInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="Microsoft.Contoso.Department.ProjectCodeName.Web" generation="1" functional="0" release="0" software="C:\TEMP\DEMO\Microsoft.Contoso.Devision.ProjectCodeName\Microsoft.Contoso.Department.ProjectCodeName\csx\Release\roles\Microsoft.Contoso.Department.ProjectCodeName.Web" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="-1" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;Microsoft.Contoso.Department.ProjectCodeName.Web&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;Microsoft.Contoso.Department.ProjectCodeName.Web&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/Microsoft.Contoso.Devision.ProjectCodeName/Microsoft.Contoso.Devision.ProjectCodeNameGroup/Microsoft.Contoso.Department.ProjectCodeName.WebInstances" />
            <sCSPolicyUpdateDomainMoniker name="/Microsoft.Contoso.Devision.ProjectCodeName/Microsoft.Contoso.Devision.ProjectCodeNameGroup/Microsoft.Contoso.Department.ProjectCodeName.WebUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/Microsoft.Contoso.Devision.ProjectCodeName/Microsoft.Contoso.Devision.ProjectCodeNameGroup/Microsoft.Contoso.Department.ProjectCodeName.WebFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="Microsoft.Contoso.Department.ProjectCodeName.WebUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="Microsoft.Contoso.Department.ProjectCodeName.WebFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="Microsoft.Contoso.Department.ProjectCodeName.WebInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="1c59233d-17a1-4d1f-808a-01ed08099780" ref="Microsoft.RedDog.Contract\ServiceContract\Microsoft.Contoso.Devision.ProjectCodeNameContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="351a8da4-bfac-479f-8aaa-5251c89680a5" ref="Microsoft.RedDog.Contract\Interface\Microsoft.Contoso.Department.ProjectCodeName.Web:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/Microsoft.Contoso.Devision.ProjectCodeName/Microsoft.Contoso.Devision.ProjectCodeNameGroup/Microsoft.Contoso.Department.ProjectCodeName.Web:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>