class setup_hyperv {

  exec {'hyperv':
  
    command     => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command 'DISM /Online /Enable-Feature /All /FeatureName: Microsoft-Hyper-V -wait'",
    command     => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command 'Yes'",
	
  }
}
