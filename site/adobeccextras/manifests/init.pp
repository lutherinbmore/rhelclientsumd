class adobeccextras {
  package { 'Adobe Photoshop CC 2018':
    ensure => installed,
    source => '\\\essi12.umd.edu\deployment-share\Photoshop\Build\Photoshop.msi',
  }
  package { 'Adobe Illustrator CC 2018':
    ensure => installed,
    source => '\\\essi12.umd.edu\deployment-share\Illustrator\Build\Illustrator.msi',
  }
}
