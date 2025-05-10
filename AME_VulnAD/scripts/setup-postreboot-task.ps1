# Define task action: run PowerShell with the post-reboot config script
$Action = New-ScheduledTaskAction -Execute "PowerShell.exe" -Argument "-ExecutionPolicy Bypass -File C:\postreboot-config.ps1"

# Define trigger: run at system startup
$Trigger = New-ScheduledTaskTrigger -AtStartup

# Register the task to run as SYSTEM with highest privileges
Register-ScheduledTask -Action $Action -Trigger $Trigger -TaskName "FinishADSetup" -User "SYSTEM" -RunLevel Highest -Force

# Copy the post-reboot script to the root of C:\
Copy-Item -Path "C:\vagrant\scripts\postreboot-config.ps1" -Destination "C:\postreboot-config.ps1"
