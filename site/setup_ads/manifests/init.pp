class setup_ads {

  file {'C:\opt\ads':
  
    ensure      => directory,
	
  }

  exec{'ApacheDirectoryStudio':

    subcribe    => File['C:\opt\ads'],
    command     => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Start-Process -Wait 'S:/ads/ApacheDirectoryStudio-2.0.0.v20170904-M13-win32.win32.x86_64.exe'  -ArgumentList '/S /D=C:\opt\ads\'", 
    refreshonly => true,
    
  }
}
 
