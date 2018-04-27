$config = @(
  @{
    Source = "~/.gitconfig"
    Link   = "~/src/profile/git/gitconfig"
  },
  @{
    Source = "~/.gitignore"
    Link   = "~/src/profile/git/gitignore"
  },
  @{
    Source = "~/Documents/PowerShell/profile.ps1"
    Link   = "~/src/profile/pwsh/profile.ps1"
  },
  @{
    Source = "~/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1"
    Link   = "~/src/profile/pwsh/profile.ps1"
  },
  @{
    Source = "~/.gemrc"
    Link   = "~/src/profile/ruby/gemrc"
  },
  @{
    Source = "~/.pryrc"
    Link   = "~/src/profile/ruby/pryrc"
  },
  @{
    Source = "~/.vimrc"
    Link   = "~/src/profile/vim/vimrc"
  },
  @{
    Source = "$($env:APPDATA)\Code - Insiders\User\settings.json"
    Link   = "~/src/profile/vscode/settings.json"
  },
  @{
    Source = "$($env:APPDATA)\Code - Insiders\User\keybindings.json"
    Link   = "~/src/profile/vscode/keybindings.json"
  }
)

$config | ForEach-Object {
  $source = $_['Source']
  $link   = $_['Link']
  New-Item -ItemType SymbolicLink -Force -Path $source -Value $link
}
