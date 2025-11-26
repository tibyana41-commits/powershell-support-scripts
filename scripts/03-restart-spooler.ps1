# Script 03: Restart Print Spooler
# Description: Restarts the print spooler service

Write-Output "=== Restarting Print Spooler ==="

Restart-Service spooler

Write-Output "Print Spooler restarted successfully."
