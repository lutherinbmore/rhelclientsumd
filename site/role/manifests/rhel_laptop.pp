class role::rhel_laptop {
  include profile::epel
  include profile::tlp
  include profile::vpn
}

