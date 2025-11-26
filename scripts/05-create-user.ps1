# Script 05: Create New User
# Description: Creates a new local user and adds to Users group

Write-Output "=== Create New User ==="

# Prompt for username and password
$username = Read-Host "Enter new username"
$password = Read-Host "Enter password" -AsSecureString

# Create user
New-LocalUser -Name $username -Password $password

# Add user to Users group
Add-LocalGroupMember -Group "Users" -Member $username

Write-Output "User $username created and added to Users group."
