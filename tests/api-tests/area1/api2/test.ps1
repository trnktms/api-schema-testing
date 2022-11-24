$config = Get-Content ../config.json | ConvertFrom-Json
$apiRoute = $config.Host + '/api/area1/api2'
$result = Invoke-WebRequest $apiRoute
Test-Json -Json $result -SchemaFile .\response-schema.json