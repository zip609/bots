#Создать значения реестра
$reg = "HKLM:\SYSTEM\CurrentControlSet\Services\RemoteAccess\Interfaces"
$reg1 = "HKLM:\SYSTEM\CurrentControlSet\Services\RemoteAccess\Interfaces\10"
$reg2 = "HKLM:\SYSTEM\CurrentControlSet\Services\RemoteAccess\Interfaces\10\ip"
$reg3 = "HKLM:\SYSTEM\CurrentControlSet\Services\RemoteAccess\Interfaces\10\ipv6"
$InterfaceInfo = "01,00,00,00,68,00,00,00,03,00,00,00,05,00,ff,ff,48,00,00,00,00,00,00,00,40,00,00,00,04,00,ff,ff,04,00,00,00,01,00,00,00,40,00,00,00,07,00,ff,ff,10,00,00,00,01,00,00,00,48,00,00,00,00,00,00,00,01,00,00,00,00,00,00,00,58,02,c2,01,08,07,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00"
$hexInterfaceInfo = $InterfaceInfo -split "," | % { "0x$_" }

#Создать ключи реестра
New-Item -Path $reg -Name 10 -Force
New-Item -Path $reg1 -Name ip -Force
New-Item -Path $reg1 -Name ipv6 -Force
#Записать значения реестра
New-ItemProperty -Path $reg1 -Name "InterfaceName" -PropertyType String -Value "{6A3F473E-D83D-814E-4C0D-CDD5CC8952C7}"
New-ItemProperty -Path $reg1 -Name "Enabled" -PropertyType DWord -Value 1
New-ItemProperty -Path $reg1 -Name "Stamp" -PropertyType DWord -Value 0
New-ItemProperty -Path $reg1 -Name "Type" -PropertyType DWord -Value 3

New-ItemProperty -Path $reg2 -Name "InterfaceInfo" -PropertyType Binary -Value ([byte[]]$hexInterfaceInfo)
New-ItemProperty -Path $reg2 -Name "ProtocolId" -PropertyType DWord -Value 33

New-ItemProperty -Path $reg3 -Name "InterfaceInfo" -PropertyType Binary -Value ([byte[]]$hexInterfaceInfo)
New-ItemProperty -Path $reg3 -Name "ProtocolId" -PropertyType DWord -Value 87

#получить имя локаного интерфейса с адресом шлюза 192.168.*.*
$nic = Get-NetRoute -AddressFamily IPv4 | Where-Object { $_.NextHop -like "192.168.*.*" } | Select-Object -ExpandProperty InterfaceAlias

Install-WindowsFeature Routing -IncludeManagementTools
Install-RemoteAccess -VpnType RoutingOnly
cmd.exe /c "netsh routing ip nat install"
cmd.exe /c "netsh routing ip nat add interface $nic"
cmd.exe /c "netsh routing ip nat set interface $nic mode=full"
