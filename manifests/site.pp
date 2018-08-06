node default {
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
  include profile::ngc_wsus
}
node 'capella.entds.ngisn.com'{
  include profile::ngc_disable_notification_center
}
node 'mizar.entds.ngisn.com'{
  include puppetboard
}
