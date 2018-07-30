class ngc_w10_offnet_sophosdx {

  file {'C:\opt\W10-OffNet-SophosDX':
  
    ensure          => directory,
	
  }

  exec {'Sophosdx':
  
    subscribe       => File['C:\opt\W10-OffNet-SophosDX'],
    command         => '& "S:\W10-OffNet-SophosDX\SophosDE.exe"',
    provider        => powershell,
    refreshonly     => true,

  }

  package {'Sophos-Standalone':
  
    ensure          => present,
    source          => 'S:\W10-OffNet-SophosDX\NG_Standalone_DX.msi',
    install_options => ['/qn', {'INSTALLDIR' => 'C:\opt\W10-OffNet-SophosDX'}],
	
  }
}
