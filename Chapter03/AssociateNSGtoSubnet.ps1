$vnet = Get-AzVirtualNetwork -Name v1 -ResourceGroupName netrwoking 
$subnet = Get-AzVirtualNetworkSubnetConfig -VirtualNetwork $vnet -Name BackEnd
$nsg = Get-AzNetworkSecurityGroup -ResourceGroupName netrwoking -Name ‘nsg1’
$subnet.NetworkSecurityGroup = $nsg
Set-AzVirtualNetwork -VirtualNetwork $vnet
