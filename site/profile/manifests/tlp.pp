class profile::tlp {
  package {'tlp':
    ensure => present,
  }
  package {'tlp-rdw':
    ensure=>present,
  }
}
