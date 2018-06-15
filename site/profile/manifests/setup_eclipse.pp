class profile::setup_eclipse{
  exec {'mkdir':
    before     => File['C:/opt/eclipse'],
    command    => "C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -command mkdir 'C:/opt/eclipse'",
  }
  
  file {'C:/opt/eclipse':
    before     => Exec['unzip'],
    require    => Exec['mkdir'],
    ensure     => directory,
    source     =>'S:/eclipse/eclipse-jee-oxygen-3a-win32-x86_64.zip',
  }

  exec {'unzip':
    require    => File['C:/opt/eclipse'],
    command    =>"C:/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -command Expand-Archive -Path 'C:/opt/eclipse/eclipse-jee-oxygen-3a-win32-x86_64.zip' -DestinationPath 'C:/opt/eclipse'",
  }
}
