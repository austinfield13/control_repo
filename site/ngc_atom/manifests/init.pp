class ngc_atom {

  file {'C:\opt\atom':

    ensure      => directory,

  }

  exec {'unzip_atom':

    subscribe   => File['C:\opt\atom'],
    command     =>"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Expand-Archive -Path 'S:\atom\atom-x64-windows.zip' -DestinationPath 'C:\opt\atom'",
    refreshonly => true,

  }
}
