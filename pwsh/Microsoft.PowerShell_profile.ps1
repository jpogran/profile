Import-Module -Name PSReadline -Version 2.0.0
Import-Module posh-git
Import-Module oh-my-posh
Import-Module Get-ChildItemColor
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  $env:chocolateyUseWindowsCompression = 'true'
  Import-Module "$ChocolateyProfile"
}

Set-Theme agnoster
$DefaultUser = 'jpogran'

switch ($host.Name) {
  'Visual Studio Code Host' {  }
  'Console' {  }
  Default {}
}

switch ($PSVersionTable.PSEdition) {
  'Core' {
    Import-Module Hyper-V -SkipEditionCheck
    Import-Module WindowsPSModulePath
    Add-WindowsPSModulePath
  }
  Default {}
}

[Environment]::SetEnvironmentVariable("VAGRANT_DEFAULT_PROVIDER", "hyperv", "User")

function .. { Set-Location -Path .. }
function la { Get-ChildItem -Force }
function bi { bundle install --path .bundle/gems --without system_tests }
function be { bundle exec $args }

function gitup{
  [CmdletBinding()]
  param(
    $remote = 'origin',
    $branch = 'master'
  )
  git fetch "$($remote)"
  git rebase "$($remote)/$($branch)"
}

# Set-Alias -Name git   -Value hub
Set-Alias -Name time  -Value Measure-Command
Set-Alias -Name ss    -Value Select-String
Set-Alias -Name count -Value Measure-Object
Set-Alias -Name ll    -Value Get-ChildItem

# Set l and ls alias to use the new Get-ChildItemColor cmdlets
Set-Alias ls Get-ChildItemColor -Option AllScope
Set-Alias lw Get-ChildItemColorFormatWide -Option AllScope
