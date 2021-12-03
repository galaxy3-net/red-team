#$nsg = Get-AzNetworkSecurityGroup -Name "RedTeamSG" -ResourceGroupName "RedTeam"

#$rule1 = New-AzNetworkSecurityRuleConfig -Name rdp-rule -Description "Allow RDP" `
#    -Access Allow -Protocol Tcp -Direction Inbound -Priority 100 -SourceAddressPrefix `
#    Internet -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 3389

#$rule2 = New-AzNetworkSecurityRuleConfig -Name web-rule -Description "Allow HTTP" `
#    -Access Allow -Protocol Tcp -Direction Inbound -Priority 101 -SourceAddressPrefix `
#    Internet -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 80



# https://docs.microsoft.com/en-us/powershell/module/az.network/new-aznetworksecurityruleconfig?view=azps-6.6.0

Get-AzNetworkSecurityGroup -Name RedTeamSG -ResourceGroupName RedTeam |
        Add-AzNetworkSecurityRuleConfig -Name rdp-rule -Description "Deny All" -Access `
    Deny -Protocol * -Direction Inbound -Priority 4096 -SourceAddressPrefix Internet `
    -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange * |
        Set-AzNetworkSecurityGroup

Get-AzNetworkSecurityGroup -Name RedTeamSG -ResourceGroupName RedTeam |
        Add-AzNetworkSecurityRuleConfig -Name rdp-rule -Description "Allow RDP" -Access `
    Allow -Protocol Tcp -Direction Inbound -Priority 4097 -SourceAddressPrefix "10.10.10.10/32"
    -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 3389 |
        Set-AzNetworkSecurityGroup

 #>