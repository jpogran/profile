$config = @(
  @{
    Source = "~/.gitconfig"
    Link   = "~/src/jpogran/profile/git/gitconfig"
  },
  @{
    Source = "~/.gitignore"
    Link   = "~/src/jpogran/profile/git/gitignore"
  },
  @{
    Source = "~/Documents/PowerShell/profile.ps1"
    Link   = "~/src/jpogran/profile/pwsh/profile.ps1"
  },
  @{
    Source = "~/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1"
    Link   = "~/src/jpogran/profile/pwsh/Microsoft.PowerShell_profile.ps1"
  },
  @{
    Source = "~/Documents/PowerShell/Microsoft.PowerShell_profile.ps1"
    Link   = "~/src/jpogran/profile/pwsh/Microsoft.PowerShell_profile.ps1"
  },
  @{
    Source = "~/Documents/PowerShell/Microsoft.VSCode_profile.ps1"
    Link   = "~/src/jpogran/profile/pwsh/Microsoft.VSCode_profile.ps1"
  },
  @{
    Source = "~/.gemrc"
    Link   = "~/src/jpogran/profile/ruby/gemrc"
  },
  @{
    Source = "~/.pryrc"
    Link   = "~/src/jpogran/profile/ruby/pryrc"
  },
  @{
    Source = "~/.vimrc"
    Link   = "~/src/jpogran/profile/vim/vimrc"
  },
  @{
    Source = "$($env:APPDATA)\Code\User\settings.json"
    Link   = "~/src/jpogran/profile/vscode/settings.json"
  },
  @{
    Source = "$($env:APPDATA)\Code\User\keybindings.json"
    Link   = "~/src/jpogran/profile/vscode/keybindings.json"
  },
  @{
    Source = "$($env:APPDATA)\Code - Insiders\User\settings.json"
    Link   = "~/src/jpogran/profile/vscode/settings.json"
  },
  @{
    Source = "$($env:APPDATA)\Code - Insiders\User\keybindings.json"
    Link   = "~/src/jpogran/profile/vscode/keybindings.json"
  }
)

$config | ForEach-Object {
  $source = $_['Source']
  $link   = $_['Link']
  New-Item -ItemType SymbolicLink -Force -Path $source -Value $link
}
