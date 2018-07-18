class umdvpn {
  package {'vpnc':
    ensure => installed,
  }
  package {'NetworkManager-openconnect':
    ensure => installed,
  }
  package {'NetworkManager-openconnect-gnome':
    ensure => installed,
  }
}
