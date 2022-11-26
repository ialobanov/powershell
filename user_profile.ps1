oh-my-posh init pwsh --config "~/.config/powershell/ivan.omp.json" | Invoke-Expression

# Import-Module
Import-Module -SkipEditionCheck -Force -Name Terminal-Icons
Import-Module -SkipEditionCheck -Force -Name 7Zip4Powershell
Import-Module -SkipEditionCheck -Force -Name PSWindowsUpdate
Import-Module -SkipEditionCheck -Force -Name VPNCredentialsHelper
Import-Module -SkipEditionCheck -Force -Name PSReadLine
Import-Module -SkipEditionCheck -Force -Name PSFzf

# PSReadline options
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -PredictionSource History 
Set-PSReadLineOption -BellStyle None 
Set-PSReadLineOption -PredictionViewStyle ListView 
Set-PSReadLineOption -ShowToolTips:$True 
Set-PSReadLineOption -HistoryNoDuplicates:$True
Set-PSReadLineOption -Colors @{
	Command            = 'Yellow'
	Number             = '#D84ACD'
	Member             = 'DarkGray'
	Operator           = 'Green'
	Type               = 'DarkRed'
	Variable           = 'DarkGreen'
	Parameter          = 'Green'
	ContinuationPrompt = 'DarkGray'
	Default            = 'White'
	Error              = 'Red'
	String             = 'Blue'
	}

Set-PSReadlineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Functions
Function IndeedNovVPNOn {rasphone "Indeed-ID.VPN.Novgorod"}
Function CleanTemp {sudo Remove-Item -Path $env:TEMP\* -Recurse -Force -ErrorAction SilentlyContinue |
sudo Remove-Item -Path C:\Windows\Temp\* -Recurse -Force -ErrorAction SilentlyContinue | Clear-RecycleBin -force
	}
Function IndeedNovVPNOff {rasdial "Indeed-ID.VPN.Novgorod" /disconnect}
Function shutdownoff {shutdown /p}
Function shutdownreboot {shutdown /r /t 0}
Function wincheck {sudo Get-WindowsUpdate}
Function winupdate {sudo Get-WindowsUpdate -AcceptAll -Install}
Function reloadpowershell {Invoke-Command { & "pwsh.exe"       } -NoNewScope}
Function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
  Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue 
  }
Function checkall {sudo Get-WindowsUpdate -AcceptAll -Install | winget upgrade --all | scoop update --all}
Function nvimclean {Remove-Item -r ~/AppData/Local/nvim-data/swap/ | Remove-Item -r ~/AppData/Local/nvim-data/shada/}

# Alias
Set-Alias iion IndeedNovVPNOn
Set-Alias iioff IndeedNovVPNOff
Set-Alias cle clear
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias wi winget
Set-Alias slack ~\AppData\Local\slack\slack.exe
Set-Alias indeed '~\OneDrive\Documents\Indeed Identity.rdp'
Set-Alias tlg '~\AppData\Roaming\Telegram Desktop\Telegram.exe'
Set-Alias chrome 'C:\Program Files\Google\Chrome\Application\chrome.exe'
Set-Alias zoom '~\AppData\Roaming\Zoom\bin\Zoom.exe'
Set-Alias reboot shutdownreboot
Set-Alias poweroff shutdownoff
Set-Alias cln CleanTemp
Set-Alias winup winupdate
Set-Alias winchk wincheck
Set-Alias touch New-Item
Set-Alias reload reloadpowershell
Set-Alias chk checkall
Set-Alias proton 'C:\Program Files (x86)\Proton Technologies\ProtonVPN\ProtonVPN.exe'
Set-Alias vag vagrant
Set-Alias vimcln nvimclean
