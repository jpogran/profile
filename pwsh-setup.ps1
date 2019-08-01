$font = 'https://github.com/haasosaurus/nerd-fonts/blob/regen-mono-font-fix/patched-fonts/LiberationMono/complete/Literation%20Mono%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf'

$key = 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Console\TrueTypeFont'
Set-ItemProperty -Path $key -Name '000' -Value 'LiberationMono NF'

Install-Module -Name posh-git -AllowPrerelease -Scope CurrentUser -Force
Install-Module -Name oh-my-posh -AllowPrerelease -Scope CurrentUser -Force
Install-Module -Name terminal-icons -AllowPrerelease -Scope CurrentUser -Force
Install-Module -Name msterminalsettings -AllowPrerelease -Scope CurrentUser -Force

$TerminalFolder = Find-MSTerminalFolder
Invoke-RestMethod -Uri 'https://github.com/PowerShell/PowerShell/raw/master/assets/StoreLogo-Preview.png' -OutFile "$TerminalFolder\pwsh-logo.png"
$Pwsh7 = @{
  Name              = "pwsh7-preview"
  CommandLine       = 'C:\Program Files\PowerShell\7-preview\pwsh.exe'
  Icon              = 'ms-appdata:///roaming/pwsh-logo.png'
  ColorScheme       = 'Campbell'
  FontFace          = 'LiberationMono NF'
  StartingDirectory = '%USERPROFILE%'
}

if(Get-MSTerminalProfile -name $Pwsh7.Name){
  Set-MSTerminalProfile @Pwsh7
}else{
  New-MSTerminalProfile @Pwsh7
}
