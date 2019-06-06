Enable-ADOptionalFeature -Identity 'CN=Recycle Bin Feature,CN=Optional Features,CN=Directory Service,CN=Windows NT,CN=Services,CN=Configuration,DC=yourdomain,DC=co,DC=il' -Scope ForestOrConfigurationSet - Target'yourdomain'
$h = 'youruser'
Get-ADObject -Filter {samaccountname -eq $h} -IncludeDeletedObjects | Restore-ADObject