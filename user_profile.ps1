oh-my-posh init pwsh --config "~\AppData\Local\Programs\oh-my-posh\themes\takuya.omp.json" | Invoke-Expression

# Import-Module
Import-Module -SkipEditionCheck -Force -Name 'Terminal-Icons'
Import-Module -SkipEditionCheck -Force -Name '7Zip4Powershell'
Import-Module -SkipEditionCheck -Force -Name 'PSWindowsUpdate'
Import-Module -SkipEditionCheck -Force -Name 'VPNCredentialsHelper'
Import-Module -SkipEditionCheck -Force -Name 'PSReadLine'

Set-PSReadLineOption -EditMode Emacs -PredictionSource History -BellStyle None -ViModeIndicator Cursor # -ViModeChangeHandler $OnViModeChange
Set-PSReadLineOption -PredictionViewStyle ListView -ShowToolTips:$True -HistoryNoDuplicates:$True
Set-PSReadLineOption -Colors @{
	Command            = 'DarkCyan'
	Number             = 'Gray'
	Member             = 'DarkGray'
	Operator           = 'Green'
	Type               = 'Green'
	Variable           = 'DarkGreen'
	Parameter          = 'Green'
	ContinuationPrompt = 'DarkGray'
	Default            = 'Yellow'
	Error              = 'red'
	String             = 'DarkYellow'
	}


# Functions
# Function IndeedNovVPNOn {rasdial "Indeed-ID.VPN.General"}
Function CleanTemp {sudo Remove-Item -Path $env:TEMP\* -Recurse -Force -ErrorAction SilentlyContinue}
# Function IndeedNovVPNOff {rasdial "Indeed-ID.VPN.General" /disconnect}
Function shutdownoff {shutdown /p}
Function shutdownreboot {shutdown /r /t 0}
Function wincheck {sudo get-windowsupdate}
Function winupdate {sudo Get-WindowsUpdate -AcceptAll -Install}

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
Set-Alias clean CleanTemp
Set-Alias winup winupdate
Set-Alias winchk wincheck
