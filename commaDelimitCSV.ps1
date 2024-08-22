# Import the CSV file
$data = Import-Csv -Path "C:\Users\914476\Documents\Github\AD_Source_enabled.csv"

# Get the samaccountname attribute from each member
$samaccountnames = $data | ForEach-Object { $_.samaccountname }

# Comma delimit the results in batches of 250
$batchSize = 250
$batches = for ($i = 0; $i -lt $samaccountnames.Count; $i += $batchSize) {
    $samaccountnames[$i..($i + $batchSize - 1)] -join ';'
}

# Output the batches with a blank line between each batch
foreach ($batch in $batches) {
    Write-Host $batch
    Write-Host
}
