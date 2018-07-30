class ngc_w10_offnet_sophosdx {

  file {'C:\opt\W10-OffNet-SophosDX':
  
    ensure          => directory,
	
  }

  exec {'SophosDXOffNet':

    subscribe        => File['C:\opt\W10-OffNet-SophosDX'],
    command          => 'Start-Process S:\W10-OffNet-SophosDX\SOPHOSDXOffNet.BAT',
    provider         => powershell,
    refreshonly      => true,
    
  }
}
