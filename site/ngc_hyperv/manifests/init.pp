class ngc_hyperv {

  exec {'hyperv':

    command     => '& "S:\\hyper-v\\Enable-HyperV.ps1"',
    unless      => 'if((Get-WindowsOptionalFeature -FeatureName Microsoft-Hyper-V-All -Online).State -ne "Enabled"){ Exit 1 }else{ Exit 0}',
    provider    => 'powershell',
    logoutput   => true,
    returns     => 0,

  }
}
