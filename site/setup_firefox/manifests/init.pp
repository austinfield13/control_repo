class setup_firefox {

  package {'firefox':
  
    ensure           => installed,
    source           => 'S:/firefox/Firefox Setup 60.0.1.exe',
    install_options  => ['/InstallDirectoryPath' => 'C:\opt\firefox'],
    
  }

}
