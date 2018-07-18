class ngc_eclipse {

  file {'C:\opt\eclipse':

    ensure      => directory,
	
  }

  exec {'unzip_eclipse':

    subscribe   => File['C:\opt\eclipse'],
    command     =>"Expand-Archive -Path 'S:\eclipse\eclipse-jee-oxygen-3a-win32-x86_64.zip' -DestinationPath 'C:\opt\eclipse'",
    provider    => 'powershell',
    refreshonly => true,

  }
  
}
