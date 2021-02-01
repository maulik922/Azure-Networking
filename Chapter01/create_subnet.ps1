$VirtualNetwork = Get-AzVirtualNetwork -ResourceGroupName netrwoking -Name v1 
Add-AzVirtualNetworkSubnetConfig -Name FrontEnd -AddressPrefix 10.0.0.0/24 -VirtualNetwork $VirtualNetwork
$VirtualNetwork | Set-AzVirtualNetwork
