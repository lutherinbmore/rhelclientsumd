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
  file { '/etc/NetworkManager/system-connections/UMD':
    ensure => file,
    source => 'puppet:///modules/umdvpn/UMD'
  }
}
