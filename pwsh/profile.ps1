Import-Module $home\Documents\PowerShell\Modules\PSReadLine\2.0.0\PSReadLine.psd1 -Force
Import-Module -Name posh-git
Import-Module -Name oh-my-posh
Import-Module -Name Terminal-Icons
# $GitPromptSettings.DefaultPromptPath.ForegroundColor = 0xFFA500
# $GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true
# $GitPromptSettings.DefaultPromptWriteStatusFirst = $true
# $GitPromptSettings.DefaultPromptBeforeSuffix.Text = '`n$([DateTime]::now.ToString("MM-dd HH:mm:ss"))'
# $GitPromptSettings.DefaultPromptBeforeSuffix.ForegroundColor = 0x808080
# $GitPromptSettings.DefaultPromptSuffix = ' $((Get-History -Count 1).id + 1)$(">" * ($nestedPromptLevel + 1)) '
Set-Theme -Name Paradox
$defaultuser = 'james'

function .. { Set-Location -Path .. }
function la { Get-ChildItem -Force }

Set-Alias -Name git   -Value hub
Set-Alias -Name time  -Value Measure-Command
Set-Alias -Name ss    -Value Select-String
Set-Alias -Name count -Value Measure-Object
Set-Alias -Name ll    -Value Get-ChildItem

# Set-PSReadLineKeyHandler -Description 'Edit current directory with Visual Studio Code' -Chord Ctrl+Shift+E  -ScriptBlock { code . }

Update-TypeData `
  -TypeName 'Microsoft.Management.Infrastructure.CimInstance#ROOT/StandardCimv2/MSFT_NetTCPConnection' `
  -MemberType ScriptProperty -MemberName Process -Value { Get-Process -Id $this.OwningProcess }
