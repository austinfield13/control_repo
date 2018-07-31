class ngc_disable_notification_center {

  exec{"Create Explorer Key":
  
    command      => 'New-Item -Path HKCU:\SOFTWARE\Policies\Microsoft\Windows\ -ItemType Directory -Name Explorer',
    unless       => 'if((Test-Path HKCU:\SOFTWARE\Policies\Microsoft\Windows\Explorer) -eq true){ Exit 0 }else{ Exit 1 }',
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
