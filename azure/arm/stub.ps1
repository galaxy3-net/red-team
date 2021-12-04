$ScriptName = "stub.ps1"
$ScriptName

$PUBLIC_IP

env | sort

New-AzResourceGroupDeployment -ResourceGroupName "${ResourceGroupName}" -TemplateUri https://raw.githubusercontent.com/galaxy3-net/red-team/krk/azure/arm/templates/${IEX_MODULE}.json -TemplateParameterUri https://raw.githubusercontent.com/galaxy3-net/red-team/krk/azure/arm/templates/${IEX_MODULE}_parameters.json
