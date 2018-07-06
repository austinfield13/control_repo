class ngc_galaxy {

    notice("Activating Windows operating system now")

  exec {'Activate Windows Part 1':
	  
	command    => "slmgr.vbs /skms 10.129.17.5:1688",
	unless     => "Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object PartialProductKey | Select-Object -property 'LicenseStatus == 1'",
	provider   => powershell,
  }

  exec {'Activate Windows Part 2':
	
    command    => "slmgr.vbs /ato",
	unless     => "Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object PartialProductKey | Select-Object -property 'LicenseStatus == 1'",
	provider   => powershell,
  }

  exec {'Activate Windows Part 3':
	
	command    => "slmgr.vbs /dli",
	unless     => "Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object PartialProductKey | Select-Object -property 'LicenseStatus == 1'",
	provider   => powershell,
  }

  notice("Windows operating system activated")
  notice("Activating Microsoft Office suite now")

  exec {'Activate Office Part 1':
	
	command    => "cscript 'C:\Program Files (x86)\Microsoft Office\Office15\ospp.vbs' /remhst",
	unless     => "Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object PartialProductKey | Select-Object -property 'LicenseStatus == 1'",
	provider   => powershell,
  }

  exec {'Activate Office Part 2':
	
	command    => "cscript 'C:\Program Files (x86)\Microsoft Office\Office15\ospp.vbs' /sethst:10.129.17.5",
	unless     => "Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object PartialProductKey | Select-Object -property 'LicenseStatus == 1'",
	provider   => powershell,
  }

  exec {'Activate Office Part 3':
	
	command    => "cscript 'C:\Program Files (x86)\Microsoft Office\Office15\ospp.vbs' /act",
	unless     => "Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object PartialProductKey | Select-Object -property 'LicenseStatus == 1'",
	provider   => powershell,
  }

  exec {'Activate Office Part 4':
	
	command    => "cscript 'C:\Program Files (x86)\Microsoft Office\Office15\ospp.vbs' /remhst",
	unless     => "Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object PartialProductKey | Select-Object -property 'LicenseStatus == 1'",
	provider   => powershell,
  }

  exec {'Activate Office Part 5':
	
	command    => "cscript 'C:\Program Files (x86)\Microsoft Office\Office15\ospp.vbs' /dstatus",
	unless     => "Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object PartialProductKey | Select-Object -property 'LicenseStatus == 1'",
	provider   => powershell,
  }

  notice("Microsoft Office activated")

}
