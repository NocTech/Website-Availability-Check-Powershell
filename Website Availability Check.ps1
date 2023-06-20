$websites = "https://www.microsoft.com", "https://www.google.com"

# Loop through each website in the array
foreach ($website in $websites) {
    # Send an HTTP request to the current website and store the response
    $response = Invoke-WebRequest -Uri $website -UseBasicParsing

    # Check the status code of the response
    if ($response.StatusCode -eq 200) {
        # If the status code is 200 (OK), print that the website is online
        Write-Host "Website $($response.BaseResponse.ResponseUri) is online"
    } else {
        # If the status code is not 200, print that the website is offline
        Write-Host "Website $($response.BaseResponse.ResponseUri) is offline"
    }
}
