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
    data         => '0',  }

  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\AUOptions':
  
    ensure       => present,
    type         => dword,
    data         => '3',
  }  
    
  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\DetectionFrequency':
  
    ensure       => present,
    type         => dword,
    data         => '22',
  }

  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\DetectionFrequencyEnabled':
  
    ensure       => present,
    type         => dword,
    data         => '1',
  }
  
  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\NoAutoRebootWithLoggedOnUsers':
  
    ensure       => present,
    type         => dword,
    data         => '1',
  }
  
  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\ScheduledInstallDay':
  
    ensure       => present,
    type         => dword,
    data         => '0',
  }
    
  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\ScheduledInstallTime':
  
    ensure       => present,
    type         => dword,
    data         => '3',
  }
  
  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\AutoInstallMinorUpdates':
  
    ensure       => present,
    type         => dword,
    data         => '1',
  }
  
  registry_value {'HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU\UseWUServer':
  
    ensure       => present,
    type         => dword,
    data         => '1',
  }
  
}
