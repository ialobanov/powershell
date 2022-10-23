# My powershell setup for Windows  
**Description**  
It's my personal powershell setup and some software for deployment on new OS (Windows 11). I use Oh My Posh to change standard look of powershell with theme ***Takuya***, you can choose different themes [here](https://ohmyposh.dev/docs/themes). I add some settings for promptline, usefull alias for me and color scheme.
  
**Prerequisites**  
[Windows Terminal](https://github.com/microsoft/terminal)  
[PowerShell](https://github.com/PowerShell/PowerShell/releases/tag/v7.2.7)  
  
**How to use**  
```
winget install -h --id Git.Git
mkdir ~/.config
cd ~/.config
git clone https://github.com/lobanov4real/pwsh-user-profile.git
cd ~/powershell
./run-install.ps1 in powershell
```
## List of powershell modules  
- Terminal-Icons
- 7Zip4Powershell
- PSWindowsUpdate
- VPNCredentialsHelper
## List of scoop software  
- neovim 
- curl 
- sudo 
- git 
- webtorrent
## list of winget software  
- OhMyPosh
- Google Chrome
- Telegram Desktop
- Bitwarden
- Obsidian
- Speccy
- Slack
- Zoom
- Lightshot
- ProtonVPN
- 7zip  
  
> **Warning**  
Some software: ***Speccy***, ***Zoom***, ***Lightshot***, ***ProtonVPN*** and ***7zip*** require a privileged right to install. You can run powershell as Administrator or just confirm operation in installation process.  
