class adobeccextras {
  package { 'Photoshop':
    ensure => installed,
    source => '\\\ESSIWK170.ad.umd.edu\Deployment\Photoshop\Build\Photoshop.msi',
  }
  package { 'Illustrator':
    ensure => installed,
    source => '\\\ESSIWK170.ad.umd.edu\Deployment\Illustrator\Build\Illustrator.msi',
  }
}
