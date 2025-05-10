# Install the AD DS role
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools

# Import module
Import-Module ADDSDeployment

# Promote the server to Domain Controller
Install-ADDSForest `
  -DomainName "lab.local" `
  -DomainNetbiosName "LAB" `
  -SafeModeAdministratorPassword (ConvertTo-SecureString "P@ssw0rd123" -AsPlainText -Force) `
  -InstallDns `
  -Force:$true
