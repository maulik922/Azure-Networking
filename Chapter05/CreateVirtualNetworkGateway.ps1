$vnet = Get-AzVirtualNetwork -ResourceGroupName netrwoking -Name 'Packt-Script'
Add-AzVirtualNetworkSubnetConfig -Name 'GatewaySubnet' -AddressPrefix 10.11.2.0/27 -VirtualNetwork $vnet
$vnet | Set-AzVirtualNetwork
$gwpip = New-AzPublicIpAddress -Name VNet1GWIP -ResourceGroupName netrwoking -Location 'West US 2' -AllocationMethod Dynamic

$vnet = Get-AzVirtualNetwork -ResourceGroupName netrwoking -Name 'Packt-Script'
$subnet = Get-AzVirtualNetworkSubnetConfig -Name 'GatewaySubnet' -VirtualNetwork $vnet
$gwipconfig = New-AzVirtualNetworkGatewayIpConfig -Name gwipconfig1 -SubnetId $subnet.Id -PublicIpAddressId $gwpip.Id
New-AzVirtualNetworkGateway -Name VNet1GW -ResourceGroupName netrwoking -Location 'West US 2' -IpConfigurations $gwipconfig -GatewayType Vpn -VpnType RouteBased -GatewaySku VpnGw1
