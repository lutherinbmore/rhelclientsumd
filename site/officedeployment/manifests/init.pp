class officedeployment {
  package { 'Microsoft Office Professional Plus 2016':
    ensure => installed,
    source => '\\\ESSIWK170.ad.umd.edu\Deployment\Office Pro Plus 2016 64bit\setup.exe',
  }
}
