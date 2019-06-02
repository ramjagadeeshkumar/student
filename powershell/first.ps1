$location = Read-Host -Prompt "enter desired location"
$res_group = Read-Host -Prompt "enter desired resourse group"
$virtual_net = $res_group
$Address_prefix = Read-Host -Prompt "enter address range of the virtual network"
$i = 2
while ($i) {
    $i++
    if (($Address_prefix -like "10.*.*.*/*") -or ($Address_prefix -like "192.168.*.*/*") -or ($Address_prefix -like "172.16.*.*/*")) {

        write-Host " Thanks for entering Addres space "
        $Network_workspace = "$Address_prefix"
        write-Host " your network workspace is $Network_workspace "
    
        break
    } 
    else {
        Write-Host "Re-Enter  Network_space "
        $Address_prefix = Read-Host -Prompt 'Re-Enter' 
    }
}
$subnet_addr_prefix1 = Read-Host -Prompt "enter subnet address prefix"
$subnet_addr_prefix2 = Read-Host -Prompt "enter subnet address prefix"
$subnet_addr_prefix3 = Read-Host -Prompt "enter subnet address prefix"
New-AzResourceGroup -Name $res_group -Location $location
$sub1 = New-AzVirtualNetworkSubnetConfig -Name "web" -AddressPrefix $subnet_addr_prefix1
$sub2 = New-AzVirtualNetworkSubnetConfig -Name "management" -AddressPrefix $subnet_addr_prefix2
$sub3 = New-AzVirtualNetworkSubnetConfig -Name "db" -AddressPrefix $subnet_addr_prefix3
$test = New-AzVirtualNetwork -Name $virtual_net -ResourceGroupName $res_group -Location $location -AddressPrefix $Address_prefix -Subnet $sub1, $sub2, $sub3
$file = $test
echo $file

for ($i = 0; $i -le 2; $i++) {
    $Subnet = $test.Subnets[$i].AddressPrefix
    echo $Subnet
    $Subnet_name = $test.Subnets[$i].Name
    echo $Subnet_name
}
#$file = $dass.Subnets[1 - 3]
#echo $file  
#$Subnet = $Vnet.AddressSpace[$i].AddressPrefixes
Get-AzVirtualNetwork -Name $virtual_net -ResourceGroupName $res_group | where Name -Like $res_group