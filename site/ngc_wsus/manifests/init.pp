class ngc_wsus {

  exec{"Execute batch file":
    
    command      => "cd C:\opt\ | .\wsus.ps1",
    onlyif       => "(REG QUERY 'HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\WindowsUpdate\\' /f WUServer) -eq 'end of search: 0 match(es) found.'",
    provider     => 'powershell',
    logoutput    => true,
    
  }

}
