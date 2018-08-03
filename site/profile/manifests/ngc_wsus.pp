# This module configures the WSUS setup in the registry of the workstation
#
#
#
# @example
#   include profile::ngc_wsus
class profile::ngc_wsus {

  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\WUServer':
  
    ensure       => present,
	type         => string,
	data         => 'http://10.129.17.5',
  }

  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\WUStatusServer':
  
    ensure       => present,
	type         => string,
	data         => 'http://10.129.17.5',
  }

  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\NoAutoUpdate':
  
    ensure       => present,
	type         => dword,
	data         => '0',
  }

  #exec{"Execute NoAutoUpdate Configuration":
    #command      => '& S:\galaxy\wsus\wsus.ps1',
    #unless       => 'if(((REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f NoAutoUpdate) -split "\s+",5)[5] -ne "0x0"){ Exit 1 }else{ Exit 0 }',
    #provider     => powershell,
    #returns      => 0,
    #logoutput    => true,
  #}

  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\AUOptions':
  
    ensure       => present,
	type         => dword,
	data         => '3',
  }  
    
  #exec{"Execute AUOptions Configuration":
    
    #command      => '& S:\galaxy\wsus\wsus.ps1',
    #unless       => 'if(((REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f AUOptions) -split "\s+",5)[5] -ne "0x3"){ Exit 1 }else{ Exit 0 }',
    #provider     => powershell,
    #returns      => 0,
    #logoutput    => true,
  #}
  
  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\DetectionFrequency':
  
    ensure       => present,
	type         => dword,
	data         => '16',
  }

  #exec{"Execute DetectionFrequency Configuration":
    
    #command      => '& S:\galaxy\wsus\wsus.ps1',
    #unless       => 'if(((REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /v DetectionFrequency) -split "\s+",5)[5] -ne "0x16"){ Exit 1 }else{ Exit 0 }',
    #provider     => powershell,
    #returns      => 0,
    #logoutput    => true,
  #}

  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\DetectionFrequencyEnabled':
  
    ensure       => present,
	type         => dword,
	data         => '1',
  }
  
  #exec{"Execute DetectionFrequencyEnabled Configuration":
    
    #command      => '& S:\galaxy\wsus\wsus.ps1',
    #unless       => 'if(((REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f DetectionFrequencyEnabled) -split "\s+",5)[5] -ne "0x1"){ Exit 1 }else{ Exit 0 }',
    #provider     => powershell,
    #returns      => 0,
    #logoutput    => true,
  #}

  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\NoAutoRebootWithLoggedOnUsers':
  
    ensure       => present,
	type         => dword,
	data         => '1',
  }
  
  #exec{"Execute NoAutoRebootWithLoggedOnUsers Configuration":
    
    #command      => '& S:\galaxy\wsus\wsus.ps1',
    #unless       => 'if(((REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f NoAutoRebootWithLoggedOnUsers) -split "\s+",5)[5] -ne "0x1"){ Exit 1 }else{ Exit 0 }',
    #provider     => powershell,
    #returns      => 0,
    #logoutput    => true,
  #}

  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\ScheduledInstallDay':
  
    ensure       => present,
	type         => dword,
	data         => '0',
  }
    
  #exec{"Execute ScheduledInstallDay Configuration":
    
    #command      => '& S:\galaxy\wsus\wsus.ps1',
    #unless       => 'if(((REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f ScheduledInstallDay) -split "\s+",5)[5] -ne "0x0"){ Exit 1 }else{ Exit 0 }',
    #provider     => powershell,
    #returns      => 0,
    #logoutput    => true,
  #}

  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\ScheduledInstallTime':
  
    ensure       => present,
	type         => dword,
	data         => '3',
  }
  
  #exec{"Execute ScheduledInstallTime Configuration":
    
    #command      => '& S:\galaxy\wsus\wsus.ps1',
    #unless       => 'if(((REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f ScheduledInstallTime) -split "\s+",5)[5] -ne "0x3"){ Exit 1 }else{ Exit 0 }',
    #provider     => powershell,
    #returns      => 0,
    #logoutput    => true,
  #}

  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\AutoInstallMinorUpdates':
  
    ensure       => present,
	type         => dword,
	data         => '1',
  }
  
  #exec{"Execute AutoInstallMinorUpdates Configuration":
    
    #command      => '& S:\galaxy\wsus\wsus.ps1',
    #unless       => 'if(((REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f AutoInstallMinorUpdates) -split "\s+",5)[5] -ne "0x1"){ Exit 1 }else{ Exit 0 }',
    #provider     => powershell,
    #returns      => 0,
    #logoutput    => true,
  #}

  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\UseWUServer':
  
    ensure       => present,
	type         => dword,
	data         => '1',
  }
  
  #exec{"Execute UseWUServer Configuration":
    
    #command      => '& S:\galaxy\wsus\wsus.ps1',
    #unless       => 'if(((REG QUERY HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f UseWUServer) -split "\s+",5)[5] -ne "0x1"){ Exit 1 }else{ Exit 0 }',
    #provider     => powershell,
    #returns      => 0,
    #logoutput    => true,
  #}

}

