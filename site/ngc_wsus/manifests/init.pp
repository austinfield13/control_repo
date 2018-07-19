class ngc_wsus {

  exec{"Execute batch file":
    
    command      => "cd C:\opt\ | .\wsus.ps1",
    onlyif       => "Get-ItemProperty -Path hklm:SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate | Select-Object -property WUServer | Where-Object -property WUServer -ne {Select-String -Pattern 'http://10.129.17.5'}",
    provider     => 'powershell',
    logoutput    => true,
    
  }

}
