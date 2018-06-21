class ngc_pgadmin {

  file {'C:\opt\pgadmin':

    ensure          => directory,

  }

  package {'pgadmin':

    ensure          => installed,
    source          => 'S:\pgadmin\pgadmin4-3.0-x86.exe',
    install_options => ['/SP-', '/VERYSILENT', {'/DIR' => 'C:\opt\pgadmin'}],

  }
}
