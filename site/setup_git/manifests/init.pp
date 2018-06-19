class setup_git {

  file {'C:\opt\git':

    ensure     => directory,

  }

  package {'git':

    ensure          => installed,
    source          => 'S:/git/Git-2.16.2-64-bit.exe',
    install_options => [{'/configure' => 'S:\git\git-install.ini'}],

  }
}

