<#
.Synopsis
This script detects if Cisco Anyconnect is installed.
To be paired with remediation script.
#>

$app = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -like 'Cisco Anyconnect*' }

if($app)
{
Write-Output '...found Cisco Anyconnect.'
Exit 1
}
else
{
Write-Output '... Cisco Anyconnect not found.'
Exit 0
}