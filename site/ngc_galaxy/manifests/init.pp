class ngc_galaxy {

  exec {'Activate Windows and Office':
  
    command    => 'powershell -executionpolicy remotesigned -file S:\galaxy\Activate-GalaxyNet.ps1',
    unless     => 'if((Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object PartialProductKey | Select-Object -property LicenseStatus | Where-Object -Property LicenseStatus -ne "1") -ne $null){ Exit 1 }else { Exit 0 }',
    provider   => powershell,
    returns    => 0,
    logoutput  => true,
  }
}
