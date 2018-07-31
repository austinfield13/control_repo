class ngc_disable_notification_center {

  exec{"Create Explorer Key":
  
    command      => 'New-Item -Path HKCU:\SOFTWARE\Policies\Microsoft\Windows\ -ItemType Directory -Name Explorer',
    unless       => 'Test-Path HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer',
    provider     => powershell,
    returns      => 0,
    logoutput    => true,
  }

  exec{"Disable Notifications":
    
    command      => 'regedit /s S:\windows-10\DisableNotificationCenter.reg',
    unless       => 'if((REG QUERY HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\Explorer /f DisableNotificationCenter) -ne "1"){ Exit 1 }else{ Exit 0 }',
    provider     => powershell,
    returns      => 0,
    logoutput    => true,
  }
}
