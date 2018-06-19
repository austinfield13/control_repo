class setup_gpg {

  file {'C:\opt\gpg':

    ensure     => directory,

  }

  package {'gpg':

    ensure          => installed,
    source          => 'S:/gpg/gpg4win-3.1.0.exe',
    install_options => ['/SP-', '/VERYSILENT',{'/DIR' => 'C:\opt\gpg'}, {'/LOADINF' => 'S:\git\git-install.ini'}],

  }
}
