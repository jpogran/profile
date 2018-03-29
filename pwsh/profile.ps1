Import-Module -Name PSReadline -Version 2.0.0
Import-Module -Name posh-git
Import-Module -Name oh-my-posh
Import-Module -Name dircolors

# $global:GitPromptSettings.DefaultPromptSuffix           = '`n$(''>'' * ($nestedPromptLevel + 1)) '
# $GitPromptSettings.DefaultPromptPrefix                  = '[$(hostname)] '
# $GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true

$DefaultUser = 'jpogran'
Set-Theme agnoster

Set-Alias -Name git   -Value hub
Set-Alias -Name time  -Value Measure-Command
Set-Alias -Name ss    -Value Select-String
Set-Alias -Name count -Value Measure-Object
Set-Alias -Name ll    -Value Get-ChildItem

function .. { Set-Location -Path .. }
function la { Get-ChildItem -Force }
