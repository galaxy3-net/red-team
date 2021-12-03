Get-AzNetworkSecurityGroup -Name "RedTeamSG" -ResourceGroupName "RedTeam"

Set-AzNetworkSecurityRuleConfig -Name "rdp-rule" -NetworkSecurityGroup $nsg -Access "Deny" -DestinationAddressPrefix * -DestinationPortRange 3389 -Direction Inbound -Name 'rdp-rule' -Priority 4096 -Protocol Tcp  -SourcePortRange *