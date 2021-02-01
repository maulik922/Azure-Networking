$nsg = Get-AzNetworkSecurityGroup -Name ‘nsg1’ -ResourceGroupName netrwoking
$nsg | Add-AzNetworkSecurityRuleConfig -Name ‘Allow_HTTPS’ -Description ‘Allow_HTTPS’ -Access Allow -Protocol Tcp -Direction Inbound -Priority 100 -SourceAddressPrefix Internet -SourcePortRange * -DestinationAddressPrefix * -DestinationPortRange 443 | Set-AzNetworkSecurityGroup
