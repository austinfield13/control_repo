class ngc_ca {

  exec {'ng-1.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-1.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "FC772EBAC6A3B701764A6E4E8F09F06B0F726CF8"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  exec {'ng-2.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-2.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "411657F7832C262F373D8F9E09A1AFC4D0A10A6A"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
}
