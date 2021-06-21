$DateTimeNow = Get-Date
$waitTimeStart = Get-Date -Hour 0 -Minute 5
$waitTimeEnd = Get-Date -Hour 3 -Minute 5

if($DateTimeNow.TimeOfDay -gt $waitTimeStart.TimeOfDay -and $DateTimeNow.TimeOfDay -lt $waitTimeEnd.TimeOfDay){
    "wait Time"
} 
else {
    "RUN"
}