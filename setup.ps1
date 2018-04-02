$config = @(
  @{
    Source = "~/.gitconfig"
    Link   = "~/src/my/profile/git/gitconfig"
  },
  @{
    Source = "~/.gitignore"
    Link   = "~/src/my/profile/git/gitignore"
  },
  @{
    Source = "~/Documents/PowerShell/profile.ps1"
    Link   = "~/src/my/profile/pwsh/profile.ps1"
  },
  @{
    Source = "~/.gemrc"
    Link   = "~/src/my/profile/ruby/gemrc"
  },
  @{
    Source = "~/.pryrc"
    Link   = "~/src/my/profile/ruby/pryrc"
  },
  @{
    Source = "~/.vimrc"
    Link   = "~/src/my/profile/vim/vimrc"
  },
  @{
    Source = "$($env:APPDATA)\Code - Insiders\User\settings.json"
    Link   = "~/src/my/profile/vscode/settings.json"
  },
  @{
    Source = "$($env:APPDATA)\Code - Insiders\User\keybindings.json"
    Link   = "~/src/my/profile/vscode/keybindings.json"
  }
)

$config | ForEach-Object {
  $source = $_['Source']
  $link   = $_['Link']
  New-Item -ItemType SymbolicLink -Force -Path $source -Value $link
}
