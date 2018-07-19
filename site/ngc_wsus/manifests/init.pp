class ngc_wsus {

  exec{"Execute batch file":
    
    command      => "cd C:\opt\ | .\wsus.ps1",
    onlyif       => 'REG QUERY \"HKEY_LOCAL_MACHINE\\SOFTWARE\\Policies\\Microsoft\\Windows\\WindowsUpdate\\" /f WUServer',
    provider     => 'powershell',
    logoutput    => true,
    
  }

}
