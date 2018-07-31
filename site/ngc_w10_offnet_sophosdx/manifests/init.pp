class ngc_w10_offnet_sophosdx {

  exec {'SophosDXOffNet':

    command          => '& S:\W10-OffNet-SophosDX\InstallSophos.ps1',
    provider         => powershell,
    unless           => 'if ([System.IO.Directory]::Exists("c:\\Program Files\\Sophos")){Exit 0}else{Exit 1}',
    returns          => 0,

  }
}
