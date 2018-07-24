class adobeccextras {
  package { 'Photoshop':
    ensure => installed,
    source => '\\ESSIWK170.ad.umd.edu\Deploy\Photoshop\Build\Photoshop.msi',
  }
  package { 'Illustrator':
    ensure => installed,
    source => '\\ESSIWK170.ad.umd.edu\Deploy\Illustrator\Build\Illustrator.msi',
  }
}
