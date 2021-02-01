$RG= netrwoking
$Location= westus2
$VNetName = v1
$AzFwIpName = "AzFW-Public-IP"
$AzFwname = "AzFw-Script"

$vnet = Get-AzVirtualNetwork -ResourceGroupName $RG `
-Name $VnetName
Add-AzVirtualNetworkSubnetConfig -Name AzureFirewallSubnet `
-VirtualNetwork $vnet `
-AddressPrefix 10.11.3.0/24
Set-AzVirtualNetwork -VirtualNetwork $vnet

$AzFwIp = New-AzPublicIpAddress -Name $AzFwIpName  `
-ResourceGroupName $RG `
-Location $Location `
-AllocationMethod Static `
-Sku Standard

$Azfw = New-AzFirewall -Name $AzFwname `
-ResourceGroupName $RG `
-Location $Location `
-VirtualNetworkName $vnet.Name `
-PublicIpName $AzFwIp.Name
