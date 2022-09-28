$TunnelPath =  (Get-ChildItem 'C:\Program Files\WireGuard\Data\Configurations\*.conf*' | Select-Object -ExpandProperty Name).tostring()
$TunnelName = $TunnelPath -replace ".conf.dpapi"
$HostIP = (Get-NetRoute -DestinationPrefix 0.0.0.0/0 | Select-Object -ExpandProperty NextHop).ToString()
# write $HostIP # – uncomment this if you want to make sure IP address is correct

if($HostIP -like "192.168.*") # IP address of office DHCP-server
{
wireguard /uninstalltunnelservice $TunnelName
}
else
{
wireguard /installtunnelservice "C:\Program Files\WireGuard\Data\Configurations\$TunnelPath"
}
