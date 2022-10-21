# Custom powershell user profile  
**Add custom powershell user profile file**  
```
echo $env:USERPROFILE\.config\powershell\user_profile.ps1 > $PROFILE    
```
**Create specific directory for user profile**  
```
mkdir ~/.config | mkdir ~/.config/powershell
```
**Move to folder & add pull prepared profile**  
```
cd ~/.config/powershell
git init
git pull https://github.com/lobanov4real/pwsh-user-profile.git  
```
