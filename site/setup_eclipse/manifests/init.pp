class setup_eclipse {

  file {'C:\opt\eclipse':

    ensure      => directory,
	
  }

  exec {'unzip_eclipse':

    subscribe   => File['C:\opt\eclipse'],
    command     =>"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Expand-Archive -Path 'S:\eclipse\eclipse-jee-oxygen-3a-win32-x86_64.zip' -DestinationPath 'C:\opt\eclipse'",
    refreshonly => true,

  }
  
}

