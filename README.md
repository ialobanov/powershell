# Custom powershell user profile  
**Add path for custom powershell user profile**  
```
echo $env:USERPROFILE\.config\powershell\user_profile.ps1 > $PROFILE    
```
**Create specific directory for user profile**  
```
mkdir ~/.config  
```
**Move to folder**   
```
cd ~/.config
```
**Pull prepared profile**
```
git init | git pull https://github.com/lobanov4real/pwsh-user-profile.git  
```
