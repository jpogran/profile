# $env:Path = 'C:\Users\jpogran\Downloads\mingit\cmd;' + $env:Path
$env:Path = 'C:\Program Files\Git\bin;' + $env:Path
[Environment]::SetEnvironmentVariable("VAGRANT_DEFAULT_PROVIDER", "hyperv", "User")

Import-Module -Name PSReadline -Version 2.0.0
Import-Module "$($home)/documents/powershell/modules/posh-git/src/posh-git.psd1"
# Import-Module -Name dircolors
# Import-Module -Name oh-my-posh

$global:GitPromptSettings.DefaultPromptMiddle.Text            = ' $([DateTime]::now.ToString("MM-dd HH:mm:ss"))'
$global:GitPromptSettings.DefaultPromptMiddle.ForegroundColor = 0x7f7f7f
$global:GitPromptSettings.DefaultPromptSuffix                 = ' $((Get-History -Count 1).id + 1)$(">" * ($nestedPromptLevel + 1)) '
$global:GitPromptSettings.DefaultPromptWriteStatusFirst       = $true
$global:GitPromptSettings.DefaultPromptEnableTiming           = $true

function .. { Set-Location -Path .. }
function la { Get-ChildItem -Force }
function bi { bundle install --path .bundle/gems --without system_tests }
function be { bundle exec $args }

Set-Alias -Name git   -Value hub
Set-Alias -Name code  -Value code-insiders
Set-Alias -Name time  -Value Measure-Command
Set-Alias -Name ss    -Value Select-String
Set-Alias -Name count -Value Measure-Object
Set-Alias -Name ll    -Value Get-ChildItem
