# Script 02: Temp Files Cleanup
# Description: Clears temporary files to free up disk space

Write-Output "=== Cleaning Temp Files ==="

# Clear Windows Temp
Remove-Item -Path "C:\Windows\Temp\*" -Force -Recurse

# Clear User Temp
Remove-Item -Path "$env:USERPROFILE\AppData\Local\Temp\*" -Force -Recurse

Write-Output "Temp files cleaned successfully."
