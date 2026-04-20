Write-Host "[*] Initiating Active Directory Domain Services Promotion..."
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
$SafeModePassword = ConvertTo-SecureString "ApexCyber2026#" -AsPlainText -Force
Install-ADDSForest -DomainName "titan.local" -SafeModeAdministratorPassword $SafeModePassword -Force
Write-Host "[+] Domain Controller Promotion Complete."
