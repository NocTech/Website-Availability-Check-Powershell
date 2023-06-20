$websites = "https://www.microsoft.com", "https://www.google.com"

foreach ($website in $websites) {
    $response = Invoke-WebRequest -Uri $website -UseBasicParsing

    if ($response.StatusCode -eq 200) {
        Write-Host "Website $($response.BaseResponse.ResponseUri) is online"
    } else {
        Write-Host "Website $($response.BaseResponse.ResponseUri) is offline"
    }
}