class adobeccextras {
  package { 'Adobe Photoshop CC 2018':
    ensure => installed,
    source => '\\\ESSIWK170.ad.umd.edu\Deployment\Photoshop\Build\Photoshop.msi',
  }
  package { 'Adobe Illustrator CC 2018':
    ensure => installed,
    source => '\\\ESSIWK170.ad.umd.edu\Deployment\Illustrator\Build\Illustrator.msi',
  }
}
