class setup_gpg {

  file {'C:\opt\gpg':

    ensure     => directory,

  }

  package {'gpg':

    ensure          => installed,
    source          => 'S:/gpg/gpg4win-3.1.0.exe',
    install_options => [{'INSTALLDIR' => 'C:\opt\gpg'}, '/s'],

  }
}
