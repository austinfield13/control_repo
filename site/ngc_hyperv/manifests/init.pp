class ngc_hyperv {

  exec {'hyperv':
  
    command     => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command 'DISM /Online /Enable-Feature /All /FeatureName:Microsoft-Hyper-V -wait'",
	
  }

  exec {'accept':
  
    command     => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command 'Y'",
  
  }
}