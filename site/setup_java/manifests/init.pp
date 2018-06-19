class setup_java {

  file {'C:\opt\java':

    ensure     => directory,

  }
  
  package {'java':
  
    ensure          => installed,
    source          => 'S:/java/jdk-8u162-windows-x64.exe',
    install_options => [{'INSTALLCFG' => 'S:\java\java-install.cfg'}],

  }
}
