class profile::setup_eclipse{
  file {'C:\opt\eclipse\eclipse.zip':
    before     => Exec['unzip'],
    ensure     => present,
    source     => 'S:\eclipse\eclipse-jee-oxygen-3a-win32-x86_64.zip',
  }

  exec {'unzip':
    require    => File['C:\opt\eclipse\eclipse.zip'],
    command    =>"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Expand-Archive -Path 'C:\opt\eclipse\eclipse.zip' -DestinationPath 'C:\opt\eclipse'",
  }
  
  exec {'remove file':
    require    => Exec['unzip'],
    command    => "rm C:\opt\eclipse\eclipse.zip",
  }
}

