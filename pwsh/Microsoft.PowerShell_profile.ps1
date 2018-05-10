Import-Module -Name PSReadline -Version 2.0.0

Import-Module "$($home)/documents/powershell/modules/posh-git/src/posh-git.psd1"
$global:GitPromptSettings.DefaultPromptBeforeSuffix.Text = ' $([DateTime]::now.ToString("MM-dd HH:mm:ss"))'
$global:GitPromptSettings.DefaultPromptWriteStatusFirst  = $true
$global:GitPromptSettings.DefaultPromptBeforeSuffix.Text = '`n$([DateTime]::now.ToString("MM-dd HH:mm:ss"))'
$global:GitPromptSettings.DefaultPromptBeforeSuffix.ForegroundColor = 0x808080
$global:GitPromptSettings.DefaultPromptSuffix = ' $((Get-History -Count 1).id + 1)$(">" * ($nestedPromptLevel + 1)) '

# Import-Module -Name dircolors

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  $env:chocolateyUseWindowsCompression = 'true'
  Import-Module "$ChocolateyProfile"
}
