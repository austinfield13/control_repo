class ngc_firefox {

  file {'C:\opt\firefox':
  
    ensure           => directory,
	
  }

  package {'firefox':

    ensure           => present,
    source           => 'S:/firefox/Firefox Setup 60.0.1.exe',
    install_options  => [{'/INI' => 'S:\firefox\firefox-install.ini'}],

  }

}
