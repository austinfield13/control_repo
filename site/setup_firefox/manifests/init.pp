class setup_firefox {

  file {'C:\opt\firefox':
  
    ensure           => directory,
	
  }

  package {'firefox':

    ensure           => installed,
    source           => 'S:/firefox/Firefox Setup 60.0.1.exe',
    install_options  => [{'INSTALLLOCATION' => 'C:\opt\firefox'}, '/s'],

  }

}
