 exec {'Activate Windows and Office':
  
    command    => 'powershell -executionpolicy remotesigned -file S:\galaxy\Activate-GalaxyNet.ps1',
    unless     => "if (Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object PartialProductKey | Select-Object -property LicenseStatus| Where-Object{$_.LicenseStatus -ne '1'}) {exit 1} else {exit 0}",
    provider   => powershell,
    logoutput  => true,
  }
}
