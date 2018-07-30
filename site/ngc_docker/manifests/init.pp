class ngc_docker {

  file {'C:\opt\docker':
    
    ensure            => directory,
	
  }

  package {'docker':

    ensure            => present,
    source            => 'S:\docker\Docker for Windows Installer.exe',
    #install_options   => ['/SILENT'],
	
  }
}
