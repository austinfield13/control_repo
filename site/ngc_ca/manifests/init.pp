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
  
  exec {'ng-3.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-3.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "E454AC18FC9AE0173C365E8767B679CFE036E63F"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  #exec {'ng-4.cer':
    #command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-4.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    #unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "E454AC18FC9AE0173C365E8767B679CFE036E63F"}) -eq $null){ Exit 1 } else { Exit 0 }',
    #returns     => 0,
    #provider    => powershell,    #logoutput   => true,
  #}
  
  exec {'ng-5.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-5.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "D393E0A9869CFAD3FB9BF52E42AB62718E17C412"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  exec {'ng-6.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-6.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "2CA0EC9BBE084E38F6BF08D130476E8279EEC142"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  #exec {'ng-7.cer':
    #command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-7.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    #unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "2CA0EC9BBE084E38F6BF08D130476E8279EEC142"}) -eq $null){ Exit 1 } else { Exit 0 }',
    #returns     => 0,
    #provider    => powershell,
    #logoutput   => true,
  #}
  
  exec {'ng-8.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-8.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "37BC452BA0F670FE18500E58819C963E610E0B5B"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
 
  exec {'ng-9.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-9.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "1A1CE71D4607E7A40DBE6AB35DFEDF7D7629CC01"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  exec {'ng-10.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-10.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "EE2AA5E7ED1703EF983D02B49A590696496F5BDD"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,  }
  
  exec {'ng-11.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-11.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "BCBA1909EE97704FBD5692C146CC1B79373D095D"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  exec {'ng-12.cer':    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-12.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "2D3181AE0CD57A9F617E510FE4E0B45EAC471BCF"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  exec {'ng-13.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-13.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "32DC0786EA565D90E1F9535DE8FE4D8E453F56BA"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  exec {'ng-14.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-14.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "DAB364C6A7282E54429C24D7FBD4F33F223075FF"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  #exec {'ng-15.cer':
    #command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-15.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    #unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "32DC0786EA565D90E1F9535DE8FE4D8E453F56BA"}) -eq $null){ Exit 1 } else { Exit 0 }',
    #returns     => 0,
    #provider    => powershell,
    #logoutput   => true,
  #}
  
  exec {'ng-16.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-16.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "268B97A1E61D25922B14640FE059652E165FC1F7"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  exec {'ng-17.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-17.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "D6D5E021A9C769D90BC0B40DBCB18F16E0A46E62"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  exec {'ng-18.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-18.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "5075829F78B37812A7817AF150E2968B9CCEDC12"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  exec {'ng-19.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-19.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "B695B7B8A61C0359180588BAD0B023303300E3B5"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  exec {'ng-20.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-20.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "71312622C5BE87ADBF11EAC5E401D8DD1635DA62"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  exec {'ng-21.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-21.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "C31A729A119D9EEB81155A83946109DF9AFBD0E6"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  exec {'ng-22.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\ng-22.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "29D36DF2AAC1D0BDBA8E87AAC8FBF14967D6F103"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  exec {'rootCA-1.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\rootCA-1.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "E7823B68E564687976CEE05473520E8488DA69FA"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  exec {'rootCA-2.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\rootCA-2.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "411657F7832C262F373D8F9E09A1AFC4D0A10A6A"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  #exec {'rootCA-3.cer':
    #command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\rootCA-3.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    #unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "411657F7832C262F373D8F9E09A1AFC4D0A10A6A"}) -eq $null){ Exit 1 } else { Exit 0 }',
    #returns     => 0,
    #provider    => powershell,
    #logoutput   => true,
  #}
  
  exec {'rootCA-4.cer':
    command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\rootCA-4.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "9CC30FC9A4490E1DB4DCEBC0FDB0CC9A701FB66E"}) -eq $null){ Exit 1 } else { Exit 0 }',
    returns     => 0,
    provider    => powershell,
    logoutput   => true,
  }
  
  #exec {'rootCA-5.cer':
    #command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\rootCA-5.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    #unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "EE2AA5E7ED1703EF983D02B49A590696496F5BDD"}) -eq $null){ Exit 1 } else { Exit 0 }',
    #returns     => 0,
    #provider    => powershell,
    #logoutput   => true,
  #}
  
  #exec {'rootCA-6.cer':
    #command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\rootCA-6.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    #unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "EE2AA5E7ED1703EF983D02B49A590696496F5BDD"}) -eq $null){ Exit 1 } else { Exit 0 }',
    #returns     => 0,
    #provider    => powershell,
    #logoutput   => true,
  #}
  
  #exec {'rootCA-7.cer':
    #command     => 'Import-Certificate -Filepath "S:\\ca\\certs\\rootCA-7.cer" -CertStoreLocation "Cert:\\LocalMachine\\Root"',
    #unless      => 'if((Get-ChildItem -Path "Cert:\\LocalMachine\\Root" | Where-Object {$_.Thumbprint -eq "268B97A1E61D25922B14640FE059652E165FC1F7"}) -eq $null){ Exit 1 } else { Exit 0 }',
    #returns     => 0,
    #provider    => powershell,
    #logoutput   => true,
  #}
  
}
