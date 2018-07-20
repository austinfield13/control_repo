class ngc_ca-ta{

  exec {'ng-1.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-1.cer" -CertStoreLocation "Cert:\\Trusted Root Certification Authorities\\Certificates"',
    unless      => 'Get-ChildItem -Path "Cert:\\CurrentUser\\Root | Where-Object {$_.Thumbprint -eq "FC772EBAC6A3B701764A6E4E8F09F06B0F726CF8"}',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
    
  }
}
