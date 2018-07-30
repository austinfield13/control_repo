node default {
  include setup_jdk
  #include setup_python
}
node 'alcor.entds.ngisn.com' { 
  include ngc_w10_offnet_sophosdx
}
node 'atlas.entds.ngisn.com' {
  include ngc_galaxy
}
node 'fulu.entds.ngisn.com' {
  include ngc_wsus
  include ngc_galaxy
}
node 'torcular.entds.ngisn.com'{
  include ngc_hyperv
  include ngc_docker
}
