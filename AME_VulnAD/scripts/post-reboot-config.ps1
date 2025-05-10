# Wait for AD services to start
Start-Sleep -Seconds 60

# Import the AD module
Import-Module ActiveDirectory

# Create users
$Users = @(
    @{ Name = "Alice"; Sam = "alice"; Password = "Password123" },
    @{ Name = "Bob";   Sam = "bob";   Password = "Password123" }
)

foreach ($user in $Users) {
    New-ADUser -Name $user.Name `
               -SamAccountName $user.Sam `
               -AccountPassword (ConvertTo-SecureString $user.Password -AsPlainText -Force) `
               -Enabled $true `
               -Path "CN=Users,DC=lab,DC=local"
}

# Clean up: remove the scheduled task and script
Unregister-ScheduledTask -TaskName "FinishADSetup" -Confirm:$false
Remove-Item -Path "C:\postreboot-config.ps1" -Force
