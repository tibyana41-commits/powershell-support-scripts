# Script 01: System Health Check
# Description: Checks basic system health for IT support

Write-Output "=== System Health Check ==="

# Display computer info
Get-ComputerInfo

# Check disk space
Get-PSDrive -PSProvider FileSystem | Select-Object Name, Used, Free

# Check memory usage
Get-CimInstance Win32_OperatingSystem | Select-Object TotalVisibleMemorySize, FreePhysicalMemory

# Check running processes
Get-Process | Sort-Object CPU -Descending | Select-Object -First 10
