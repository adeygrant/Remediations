<#
.Synopsis
This script uninstalls all versions of Cisco anyconnect.
To be paired with a detection script.
#>

$app = Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -like 'Cisco Anyconnect*' }

foreach ($install in $app){
    $install.Uninstall()
}