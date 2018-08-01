class tlp {
  package {'tlp':
    ensure => present,
  } ->
  package {'tlp-rdw':
    ensure => present,
  } ->
  file { '/etc/default/tlp':
    ensure => file,
    source => 'puppet:///modules/tlp/tlp',
    mode => '0644',
  }
}
