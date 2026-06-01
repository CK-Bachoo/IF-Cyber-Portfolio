Write-Host "[*] Beginning Engineering Onboarding..."
For ($i=1; $i -le 5; $i++) {
$UserName = "Eng_User$i"
New-ADUser -Name $UserName -SamAccountName $UserName -Path "OU=Engineering,DC=titan,DC=local" -ChangePasswordAtLogon $true
}
Write-Host "[+] All engineers onboarded successfully."
