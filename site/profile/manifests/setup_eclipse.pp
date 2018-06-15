class profile::setup_eclipse{
  file {'C:\opt\eclipse\README.txt':
    before     => Exec['unzip'],
    ensure     => present,
    source     => 'S:\eclipse\README.txt',
  }

#  exec {'unzip':
#    require    => File['C:\opt\eclipse\eclipse.zip'],
#    command    =>"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Expand-Archive -Path 'C:\opt\eclipse\eclipse.zip' -DestinationPath 'C:\opt\eclipse'",
#  }
}
