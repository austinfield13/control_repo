node default {
  include setup_jdk
  #include setup_python
}
node 'alcor' { 
  include ngc_galaxy
}
node 'atlas.entds.ngisn.com' {
  include ngc_galaxy
}

node 'fulu' {
  include role::base
}
