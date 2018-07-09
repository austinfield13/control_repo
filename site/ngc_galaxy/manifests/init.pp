class ngc_galaxy {

  notice("Activating Windows operating system now")

  exec {'Check Status':
	
    command     => "$number = Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object PartialProductKey | Select-Object -property LicenseStatus| Where-Object{$_.LicenseStatus -ne '1'}",
    provider    => powershell,
  }
  
  exec {'Activate Windows Part 1':

    command     => "slmgr.vbs /skms 10.129.17.5:1688",
    unless      => $number == nil,
    provider    => powershell,
  }

  exec {'Activate Windows Part 2':

    subscribe   => Exec['Activate Windows Part 1'],
    command     => "slmgr.vbs /ato",
    provider    => powershell,
    refreshonly => true,
  }

  exec {'Activate Windows Part 3':

    subscribe   => Exec['Activate Windows Part 2'],
    command     => "slmgr.vbs /dli",
    provider    => powershell,
    refreshonly => true,
  }
}
