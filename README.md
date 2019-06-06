# recovery_user_ad
In this Powershell script you can recovery ou or user you delete from AD.

# Enable RecycleBin
Enable-ADOptionalFeature -Identity 'CN=Recycle Bin Feature,CN=Optional Features,CN=Directory Service,CN=Windows NT,CN=Services,CN=Configuration,DC=yourdomain,DC=co,DC=il' -Scope ForestOrConfigurationSet - Target'yourdomain'

# Give the name od the user you Delete
$h = 'youruser'

# Call the object you Delete
Get-ADObject -Filter {samaccountname -eq $h} -IncludeDeletedObjects


