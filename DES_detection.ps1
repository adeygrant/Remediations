$DES = Get-TLSCipherSuite -Name 'DES'

if ($DES){
Write-Output 'Ciphers found...'
Exit 1
}
else {
Write-Output 'No ciphers found...'
Exit 0
}
