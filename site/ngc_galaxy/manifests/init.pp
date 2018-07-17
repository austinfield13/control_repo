class ngc_galaxy {

  exec {'Activate Windows and Office':
  
    command    => 'powershell -executionpolicy remotesigned -file S:\galaxy\Activate-GalaxyNet.ps1',
    onlyif     => "(Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object PartialProductKey | Select-Object -property LicenseStatus | Where-Object {$_.LicenseStatus -ne '1'}) -ne $null",
    provider   => powershell,
    logoutput  => true,
  }
}
