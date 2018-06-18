class setup_jdk {

  exec {'jdk':

    path       => 'S:/java/jdk-8u162-windows-x64.exe',
    command    => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Start-Process -Wait 'S:/java/jdk-8u162-windows-x64.exe'  -ArgumentList '/S /D=C:\opt\jdk\'", 

  }
}


