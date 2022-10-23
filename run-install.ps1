Add-Content $PROFILE '.$env:USERPROFILE\.config\powershell\user_profile.ps1'
./module-install.ps1
./scoop-install.ps1
./winget-install.ps1
