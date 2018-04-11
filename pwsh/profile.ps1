Import-Module -Name PSReadline -Version 2.0.0
Import-Module "$($home)/documents/powershell/modules/posh-git/src/posh-git.psd1"
# Import-Module -Name oh-my-posh
Import-Module -Name dircolors

# $global:GitPromptSettings.DefaultPromptSuffix           = '`n$(''>'' * ($nestedPromptLevel + 1)) '
# $GitPromptSettings.DefaultPromptPrefix                  = '[$(hostname)] '
# $GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true

# $DefaultUser = 'jpogran'
# Set-Theme agnoster

[Environment]::SetEnvironmentVariable("VAGRANT_DEFAULT_PROVIDER", "hyperv", "User")

Set-Alias -Name git   -Value hub
Set-Alias -Name code  -Value code-insiders
Set-Alias -Name time  -Value Measure-Command
Set-Alias -Name ss    -Value Select-String
Set-Alias -Name count -Value Measure-Object
Set-Alias -Name ll    -Value Get-ChildItem

function .. { Set-Location -Path .. }
function la { Get-ChildItem -Force }
function bi { bundle install --path .bundle/gems --without system_tests }
function be { bundle exec $args }


# $settings = $global:GitPromptSettings
# $settings.DefaultPromptAbbreviateHomeDirectory = $true
# $settings.DefaultPromptWriteStatusFirst = $true
# $settings.BeforeText.Text = '['
# $settings.AfterText.Text  = '] '
# $settings.DefaultPromptTimingFormat = "{0}ms:"
# $settings.DefaultPromptPath.Text += "`n"
# $settings.DefaultPromptDebug = "[DBG]: "
# $settings.DefaultPromptDebug.ForegroundColor = [ConsoleColor]::Magenta
# $settings.DefaultPromptSuffix.Text = '$(if ($hist = Get-History -Count 1) {$hist.id+1} else {1})' + $settings.DefaultPromptSuffix.Text


$global:GitPromptSettings.DefaultPromptMiddle.Text            = ' $([DateTime]::now.ToString("MM-dd HH:mm:ss"))'
$global:GitPromptSettings.DefaultPromptMiddle.ForegroundColor = 0x7f7f7f
$global:GitPromptSettings.DefaultPromptSuffix                 = ' $((Get-History -Count 1).id + 1)$(">" * ($nestedPromptLevel + 1)) '
$global:GitPromptSettings.DefaultPromptWriteStatusFirst       = $true
$global:GitPromptSettings.DefaultPromptEnableTiming           = $true
