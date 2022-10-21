module-install.ps1
scoop-install.ps1
winget-install.ps1
echo $env:USERPROFILE\.config\powershell\user_profile.ps1 > $PROFILE
mkdir ~/.config
cd ~/.config
git clone https://github.com/lobanov4real/pwsh-user-profile.git
