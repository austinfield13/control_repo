class profile::ngc_hyperv_users {

  exec {'Add ENTDS group to Hyper-V administrative users':

    command    => '& S:\hyper-v\Add-Hyperv-Group.ps1',
	  unless     => 'if((net localgroup "Hyper-V Administrators") -match "ENTDS\\P3274-NSDC_PLN-Users"){Exit 0}else{Exit 1}',
	  provider   => powershell,
	  logoutput  => true,
	  returns    => 0,
  }
}
