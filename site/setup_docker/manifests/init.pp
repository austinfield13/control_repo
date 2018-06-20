class setup_docker {

  file {'C:\opt\docker':
    
    ensure            => directory,
	
  }

  package {'docker':
  
    ensure            => installed,
    source            => 'S:\docker\Docker for Windows Installer.exe',
    install_options   => ['/SP-', 'VERYSILENT', {'/DIR' => 'C:\opt\docker'}],
	
  }
}
