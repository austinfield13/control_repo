node default {
  include setup_jdk
  #include setup_python
}
node 'alcor' {
  #include setup_java
  #include setup_eclipse
  #include setup_7zip
  #include setup_atom
  #include setup_ads
  #include setup_docker
  #include setup_firefox
  #include setup_git
  #include setup_gpg
  #include setup_hipchat
  #include setup_hyperv
  #include setup_jetbrains
  #include setup_kse
  #include setup_maven
  #include setup_nerdfonts
  include setup_pgadmin
}

