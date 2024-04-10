$DES = Get-TLSCipherSuite -Name 'DES'

foreach ($cipher in $DES){

Disable-TLSCipherSuite -Name $($cipher.Name)

}