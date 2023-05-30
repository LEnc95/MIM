<# Start-Transcript -Path C:\Temp\Log.log
Write-Host "Write host test"
"Out host test" | Out-Host
Stop-Transcript #>
$Logfile = "C:\Temp\log.log"
function WriteLog
{
Param ([string]$LogString)
$Stamp = (Get-Date).toString("yyyy/MM/dd HH:mm:ss")
$LogMessage = "$Stamp $LogString"
Add-content $LogFile -value $LogMessage
}

WriteLog "The script is run"
WriteLog "Calculating…."
write-host "write-host test"
Start-Sleep 20
WriteLog "The script is successfully executed"