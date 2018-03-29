#requires -Administrator

$config = @(
  @{
    Source = ~/.gitconfig
    Link = ~/src/my/machine/git/gitconfig
  },
  {
    Source = ~/.gitignore
    Link = ~/src/my/machine/git/gitignore
  },
  @{
    Source  = ~/Documents/PowerShell/profile.ps1
    Link = ~/src/my/machine/pwsh/profile.ps1
  },
  @{
    Source  = ~/.gemrc
    Link = ~/src/my/machine/ruby/gemrc
  },
  @{
    Source  = ~/.pryrc
    Link = ~/src/my/machine/ruby/pryrc
  },
  @{
    Source  = ~/.vimrc
    Link = ~/src/my/machine/vim/vimrc
  },
  @{
    Source  = "$($env:APPDATA)\Code - Insiders\User\settings.json"
    Link = ~/src/my/machine/vscode/settings.json
  },
  @{
    Source  = "$($env:APPDATA)\Code - Insiders\User\keybindings.json"
    Link = ~/src/my/machine/vscode/keybindings.json
  }
)

# $config | % { New-Item -ItemType SymbolicLink -Force -Path $_.Path -Value $_.Value }

New-Item -ItemType SymbolicLink -Force -Path ~/.gitconfig -Value ~/src/my/machine/git/gitconfig
New-Item -ItemType SymbolicLink -Force -Path ~/.gitignore -Value ~/src/my/machine/git/gitignore

New-Item -ItemType SymbolicLink -Force -Path ~/Documents/PowerShell/profile.ps1 -Value ~/src/my/machine/pwsh/profile.ps1

New-Item -ItemType SymbolicLink -Force -Path ~/.gemrc -Value ~/src/my/machine/ruby/gemrc
New-Item -ItemType SymbolicLink -Force -Path ~/.pryrc -Value ~/src/my/machine/ruby/pryrc

New-Item -ItemType SymbolicLink -Force -Path ~/.vimrc -Value ~/src/my/machine/vim/vimrc

New-Item -ItemType SymbolicLink -Force -Path "$($env:APPDATA)\Code - Insiders\User\settings.json" -Value ~/src/my/machine/vscode/settings.json
New-Item -ItemType SymbolicLink -Force -Path "$($env:APPDATA)\Code - Insiders\User\keybindings.json" -Value ~/src/my/machine/vscode/keybindings.json
