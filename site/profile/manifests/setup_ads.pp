class profile::setup_ads {

  exec{'ApacheDirectoryStudio':

    path       => 'S:/ads/ApacheDirectoryStudio-2.0.0v20170904-M13-win32.win32.x86_64.exe',
    command    => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Start-Process -Wait 'S:/ads/ApacheDirectoryStudio-2.0.0v20170904-M13-win32.win32.x86_64.exe'  -ArgumentList '/S /D=C:\opt\ads\'", 

  }
}
