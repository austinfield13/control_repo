node default {
  include setup_jdk
  include setup_python
}
node 'alcor' inherits default {
  include setup_eclipse
  include setup_7zip
  include setup_atom
}

