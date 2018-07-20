class ngc_ca {

  exec {'ng-1.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-1.cer" -CertStoreLocation "Cert:\\CurrentUser\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\CurrentUser\\Root" | Where-Object {$_.Thumbprint -eq "FC772EBAC6A3B701764A6E4E8F09F06B0F726CF8"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
}
