class ngc_wsus {

  exec{"Execute batch file":
    
    command      => "powershell C:\opt\wsus.ps1",
    onlyif       => "(REG QUERY 'HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\WindowsUpdate\\' /f WUServer).Contains('end of search: 0 match(es) found.')",
    provider     => 'powershell',
    logoutput    => true,
    
  }

}
