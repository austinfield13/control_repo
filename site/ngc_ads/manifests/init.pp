
class setup_ads {

  file {'C:\opt\ads':

    ensure      => directory,
    
  }

  file {'C:\opt\ads\ApacheDirectoryStudio-2.0.0.v20170904-M13-win32.win32.x86_64.exe':

    ensure      => present,
    source      => 'S:/ads/ApacheDirectoryStudio-2.0.0.v20170904-M13-win32.win32.x86_64.exe',
    
  }

  package {'ApacheDirectoryStudio':

    ensure          => installed,
    source          => 'C:\opt\ads\ApacheDirectoryStudio-2.0.0.v20170904-M13-win32.win32.x86_64.exe',
    install_options => ['/S', {'/DIR' => 'C:\opt\ads'}],

  }
}
