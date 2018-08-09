node default {
}
node 'alcor.entds.ngisn.com' {
  include profile::ngc_hyperv_users
}
node 'atlas.entds.ngisn.com' {
  include ngc_galaxy
}
node 'fulu.entds.ngisn.com' {
  include ngc_wsus
  include ngc_galaxy
}
node 'torcular.entds.ngisn.com'{
  include profile::ngc_hyperv_users
}
node 'capella.entds.ngisn.com'{
  include profile::ngc_disable_notification_center
}
node 'mizar.entds.ngisn.com'{
  include profile::puppetboard
  include profile::puppetdb
}
