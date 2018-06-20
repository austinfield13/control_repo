class setup_w10_offnet_sophosdx {

  file {'C:\opt\W10-OffNet-SophosDX':
  
    ensure          => directory,
	
  }

  package {'Sophosdx':
  
    ensure          => present,
    source          => 'S:\W10-OffNet-SophosDX\SophosDE.exe',
    install_options => [{'-o' => 'C:\opt\W10-OffNet-SophosDX'}, '-y'],

  }

  package {'Sophos-Standalone':
  
    ensure          => present,
    source          => 'S:\W10-OffNet-SophosDX\NG_Standalone_DX.msi',
    install_options => ['/qn', {'INSTALLDIR' => 'C:\opt\W10-OffNet-SophosDX'}],
	
  }
}

