class ngc_galaxy {

  #exec {'Checking the Status':
  
    #command  => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command 'Get-CimInstance -ClassName SoftwareLicensingProduct | Where-Object PartialProductKey | Select-Object LicenseStatus'"
  #}

  #$status = getparam(Exec["Checking the Status"],"command")

  unless $status == 1  {
  
    notice("Activating Windows operating system now")

    exec {'Activate Windows Part 1':
	  
	  command    => "slmgr.vbs /skms 10.129.17.5:1688"
	  provider   => powershell
	}

	exec {'Activate Windows Part 2':
	
	  command    => "slmgr.vbs /ato"
	  provider   => powershell
	}

	exec {'Activate Windows Part 3':
	
	  command    => "slmgr.vbs /dli"
	  provider   => powershell
	}

	notice("Windows operating system activated")
	notice("Activating Microsoft Office suite now")

	exec {'Activate Office Part 1':
	
	  command    => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command 'cd C:\Program Files (x86)\Microsoft Office\Office15'"
	}

	exec {'Activate Office Part 2':
	
	  command    => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command 'cscript ospp.vbs /remhst'"
	}

	exec {'Activate Office Part 3':
	
	  command    => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command 'cscript ospp.vbs /sethst:10.129.17.5'"
	}

	exec {'Activate Office Part 4':
	
	  command    => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command 'cscript ospp.vbs /act'" 
	}

	exec {'Activate Office Part 5':
	
	  command    => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command 'cscript ospp.vbs /remhst'"
	}

	exec {'Activate Office Part 6':
	
	  command    => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command 'cscript ospp.vbs /dstatus'"
	}

	notice("Microsoft Office activated")

  }

}

