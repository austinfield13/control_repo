class setup_docker {

  file {'C:\opt\docker':
    
    ensure            => directory,
	
  }

  package {'docker':
  
    ensure            => installed,
    source            => 'S:\docker\Docker for Windows Installer.exe',
    install_options   => ['/S', '/D=C:\opt\docker'],
	
  }
}
