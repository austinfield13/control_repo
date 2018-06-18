class setup_atom {

  file {'C:\opt\atom':

    before     => File['C:\opt\atom\atom.zip'],
    ensure     => directory,

  }

  file {'C:\opt\atom\atom.zip':

    before     => Exec['unzip_atom'],
    ensure     => present,
    source     => 'S:\atom\atom-x64-windows.zip',

  }

  exec {'unzip_atom':

    subscribe   => File['C:\opt\atom\atom.zip'],
    command     =>"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Expand-Archive -Path 'C:\opt\atom\atom.zip' -DestinationPath 'C:\opt\atom'",
    refreshonly => true,

  }

  exec {'remove atom.zip':

    subscribe   => Exec['unzip_atom'],
    command     => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command rm C:\opt\atom\atom.zip",
    refreshonly => true,

  }
}
