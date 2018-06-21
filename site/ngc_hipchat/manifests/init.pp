class ngc_hipchat {

  file {'C:\opt\hip-chat':

    ensure     => directory,

  }

  package {'hip-chat':

    ensure          => installed,
    source          => 'S:/hip-chat/HipChat-4.30.5.1672.exe',
    install_options => ['/SP-', '/VERYSILENT',{'/DIR' => 'C:\opt\hip-chat'}],

  }

}
