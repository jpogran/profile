Import-Module $home\Documents\PowerShell\Modules\PSReadLine\2.0.0\PSReadLine.psd1 -Force
Import-Module -Name oh-my-posh
Import-Module -Name Terminal-Icons
$defaultuser = 'james'


function .. { Set-Location -Path .. }
function la { Get-ChildItem -Force }

Set-Alias -Name git   -Value hub
Set-Alias -Name time  -Value Measure-Command
Set-Alias -Name ss    -Value Select-String
Set-Alias -Name count -Value Measure-Object
Set-Alias -Name ll    -Value Get-ChildItem

Set-PSReadLineKeyHandler -Description 'Edit current directory with Visual Studio Code' -Chord Ctrl+Shift+E  -ScriptBlock { code . }

Update-TypeData -TypeName 'Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_NetTCPConnection' -MemberType ScriptProperty -MemberName Process -Value { Get-Process -Id $this.OwningProcess }
