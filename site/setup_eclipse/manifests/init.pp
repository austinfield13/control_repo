class setup_eclipse {

  file {'C:\opt\eclipse':

    before      => File['C:\opt\eclipse\eclipse.zip'],
    ensure      => directory,
	
  }

  file {'C:\opt\eclipse\eclipse.zip':

    require     => File['C:\opt\eclipse'],
    ensure      => present,
    source      => 'S:\eclipse\eclipse-jee-oxygen-3a-win32-x86_64.zip',
   
  }

  exec {'unzip_eclipse':

    subscribe   => File['C:\opt\eclipse\eclipse.zip'],
    command     =>"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Expand-Archive -Path 'C:\opt\eclipse\eclipse.zip' -DestinationPath 'C:\opt\eclipse'",
    refreshonly => true,
  
  }
  
  exec {'remove eclipse.zip':

    subscribe   => Exec['unzip_eclipse'],
    command     => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command rm C:\opt\eclipse\eclipse.zip",
    refreshonly => true,
 
  }
  
}

