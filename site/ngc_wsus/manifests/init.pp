class ngc_wsus {

  exec{"Execute batch file":
    
    command      => "cd C:\opt\ | .\wsus.ps1",
    onlyif       => "if((Get-ItemProperty -Path hklm:SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate | Select-Object -property WUServer | Where-Object -property WUServer) -eq $null){Exit 1}else{Exit 0}",
    provider     => 'powershell',
    logoutput    => true,
    
  }

}
