class profile::vpn {
  package {'vpnc':
    ensure => installed,
  }
}
