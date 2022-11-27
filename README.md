# Personal powershell setup on Windows (11)   
## Description  
It's my personal powershell setup and some software for deployment on new OS (tested on Windows 11, 10). I use Oh My Posh to change standard look of powershell with theme ***illusi0n***, you can choose different themes [here](https://ohmyposh.dev/docs/themes). I add some settings for promptline, usefull alias for me and color scheme. Inspired by [@Takuya Matsuyama](https://github.com/craftzdog) from youtube video [How to set up PowerShell prompt with Oh My Posh on Windows 11](https://www.youtube.com/watch?v=5-aK2_WwrmM).  
  
## Prerequisites    
[Windows Terminal](https://github.com/microsoft/terminal)  
[PowerShell](https://github.com/PowerShell/PowerShell)  
[Nerd fonts](https://github.com/ryanoasis/nerd-fonts)  

## Installation
```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
winget install --accept-package-agreements --accept-source-agreements -h --id Git.Git --Force  
winget install --accept-package-agreements --accept-source-agreements -h --id JanDeDobbeleer.OhMyPosh --Force

Reload PowerShell

Add-Content $PROFILE.CurrentUserCurrentHost '.$env:USERPROFILE\.config\powershell\user_profile.ps1'
cd ~/.config
git clone https://github.com/lobanov4real/powershell.git
cd ./powershell 
./run-install.ps1  

After installation reload PowerShell
```
## List of powershell modules  
- Terminal-Icons
- 7Zip4Powershell
- PSWindowsUpdate
- VPNCredentialsHelper
## List of scoop software  
- neovim 
- vcredist2022  
- curl 
- sudo 
- git 
- webtorrent  
- nodejs  
- ripgrep  
- wget  
- fzf  
- npm  
- gcc  
- luarocks
- innounp 
- tree-sitter  
- gzip  
- python  
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
- Core Temp  
  
> **Warning**  
Some software: ***Google Chrome***, ***Speccy***, ***Zoom***, ***Lightshot***, ***ProtonVPN***, ***7zip*** require and ***Core Temp*** a privileged right to install. You can run powershell as Administrator or just confirm operation during installation.  
