class setup_hyperv {

  exec {'hyperv':
  
    command     => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command 'Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All'
	
  }
}
