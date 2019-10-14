Invoke-RestMethod -Uri 'https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/VibrantInk.itermcolors' -OutFile .\VibrantInk.itermcolors

Import-Iterm2ColorScheme -Path .\VibrantInk.itermcolors -Name VibrantInk

Get-MSTerminalProfile -Name "PowerShell Core" | Set-MSTerminalProfile -ColorScheme VibrantInk

Invoke-RestMethod -Uri 'https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Monokai%20Vivid.itermcolors' -OutFile .\MonokaiVivid.itermcolors

Import-Iterm2ColorScheme -Path .\MonokaiVivid.itermcolors -Name MonokaiVivid

Get-MSTerminalProfile -Name "pwsh7" | Set-MSTerminalProfile -ColorScheme MonokaiVivid


$themes = @(
  'MaterialDark',
  'MaterialOcean',
  'Mathias',
  'Solarized%20Darcula'
)
$themes | %{
  Invoke-RestMethod -Uri "https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/$($_).itermcolors" -OutFile ".\$($_).itermcolors"
  Import-Iterm2ColorScheme -Path ".\$($_).itermcolors" -Name "$($_)"
}
