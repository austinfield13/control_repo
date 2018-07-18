class ngc_hyperv {

  exec {'hyperv':
  
    command     => 'DISM /Online /Enable-Feature /All /FeatureName:Microsoft-Hyper-V',
    provider    => 'powershell'
    logoutput   => true,
  }

  #exec {'accept':
  
    #command     => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command 'Y'",
  
  #}
}
