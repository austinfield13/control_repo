class profile::setup_7zip {
  exec {'7zip':
    path       => 'S:/7zip/7z1805-x64.exe',
    command    => "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Start-Process -Wait 'S:/7zip/7z1805-x64.exe'  -ArgumentList '/S /D="C:\opt\7zip\"'", 
  }
}
