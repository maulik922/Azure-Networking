$VirtualNetwork = Get-AzVirtualNetwork -ResourceGroupName netrwoking -Name v1 
$FrontEnd = Add-AzVirtualNetworkSubnetConfig -Name FrontEnd -AddressPrefix 10.0.3.0/24 -VirtualNetwork $VirtualNetwork
$BackEnd = Add-AzVirtualNetworkSubnetConfig -Name BackEnd -AddressPrefix 10.0.4.0/24 -VirtualNetwork $VirtualNetwork
$VirtualNetwork | Set-AzVirtualNetwork