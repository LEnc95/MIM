# Add user to Print Sync Download exception by employee ID as input
$username = Read-Host "Username"
$userdata = Get-ADUser $username
$name = $userdata.Surname+', '+ $userdata.GivenName
$name

$PSDexception = '59c41a19-0b58-4775-bbba-aaa19ad7247e'

$objectid = Get-AzureADUser -Filter "DisplayName eq '$name'"
$objectid.ObjectId

Add-AzureADGroupMember -ObjectId $PSDexception -RefObjectId $objectid.ObjectId
Write-Host "Added $name"