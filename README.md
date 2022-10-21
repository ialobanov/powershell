# Powerfull powershell  
**How to use**  
```
just execute run-install.ps1 in powershell
```
**Order of run-inatall**
```
1. module-install.ps1  
2. scoop-install.ps1
3. winget-install.ps1
4. add path for custom powershell user profile
5. clone repo
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
git clone https://github.com/lobanov4real/pwsh-user-profile.git  
```
