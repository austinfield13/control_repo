exec { 'winhttpproxy-1':
  
  command     => '&netsh winhttp set proxy "contractorproxywest.northgrum.com:80" "127.0.0.1,localhost,.northgrum.com,.entds.ngisn.com,10.*,172.16.*"',
  unless      => 'if (((netsh winhttp show proxy) -like "*bypass list*" -split "+: +", 2)[1] -ne "127.0.0.1,localhost,.northgrum.com,.entds.ngisn.com,10.*,172.16.*") { Exit 1 }',
  provider    => powershell,
  returns     => 0,
  logoutput   => true,
  
  }
