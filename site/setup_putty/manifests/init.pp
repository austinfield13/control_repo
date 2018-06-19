class setup_putty {

  file {'C:\opt\putty':

    ensure          => directory,

  }

  package {'putty':

    ensure          => installed,
    source          => 'S:\putty\putty-64bit-0.70-installer.msi',
    install_options => ['/qn', {'INSTALLDIR' => 'C:\opt\putty'}],

  }
}
