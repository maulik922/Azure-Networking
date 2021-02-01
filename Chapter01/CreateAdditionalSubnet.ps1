$VirtualNetwork = Get-AzVirtualNetwork -ResourceGroupName netrwoking -Name v1 
Add-AzVirtualNetworkSubnetConfig -Name BackEnd1 -AddressPrefix 10.0.1.0/24 -VirtualNetwork $VirtualNetwork
$VirtualNetwork | Set-AzVirtualNetwork