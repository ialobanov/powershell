# Powerfull powershell  
**Order**
~~~
1. module-install.ps1  
2. scoop-install.ps1
3. add path for custom powershell user profile
4. winget-install.ps1
~~~
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
git pull https://github.com/lobanov4real/pwsh-user-profile.git  
```
