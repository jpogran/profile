
[Environment]::SetEnvironmentVariable("VAGRANT_DEFAULT_PROVIDER", "hyperv", "User")

function .. { Set-Location -Path .. }
function la { Get-ChildItem -Force }
function bi { bundle install --path .bundle/gems --without system_tests }
function be { bundle exec $args }

# Set-Alias -Name git   -Value hub
Set-Alias -Name time  -Value Measure-Command
Set-Alias -Name ss    -Value Select-String
Set-Alias -Name count -Value Measure-Object
Set-Alias -Name ll    -Value Get-ChildItem
