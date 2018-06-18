
class profile::setup_atom{

  file {'C:\opt\atom':

    before     => File['C:\opt\eclipse\eclipse.zip'],
    ensure     => directory,

  }

  file {'C:\opt\atom\atom.zip':

    before     => Exec['unzip'],
    ensure     => present,
    source     => 'S:\atom\atom-x64-windows.zip',

  }

  exec {'unzip':

    require    => File['C:\opt\eclipse\eclipse.zip'],
    command    =>"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Expand-Archive -Path 'C:\opt\atom\atom.zip' -DestinationPath 'C:\opt\atom'",

  }

  exec {'remove file':

    require    => Exec['unzip'],
    command    => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command rm C:\opt\atom\atom.zip",

  }
}
