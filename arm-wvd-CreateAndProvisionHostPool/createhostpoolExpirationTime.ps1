# ARM tokenExpirationTime
# The expiration date can be no less than an hour and no more than one month. 
# If you set tokenExpirationTime outside of that limit, it wont work. 
# tokenExpirationTime is used to generate token for WVD hostpool


$ExpirationTime = $((get-date).ToUniversalTime().AddDays(1).ToString('yyyy-MM-ddTHH:mm:ss.fffffffZ'))

Write-Host "$("##vso[task.setvariable variable=ExpirationTime]") $($ExpirationTime)"
