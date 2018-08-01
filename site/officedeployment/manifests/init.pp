class officedeployment {
  package { 'Microsoft Office Professional Plus 2016':
    ensure => installed,
    source => '\\\ESSIWK170.ad.umd.edu\Deployment\Office Pro Plus 2016 64bit\setup.exe',
  }
  package { 'Adobe Acrobat DC':
    ensure => installed,
    source => '\\\ESSIWK170.ad.umd.edu\Deployment\Adobe Acrobat\Setup.exe',
    install_options => ['/sall'],
  }
  package { 'Google Chrome':
    ensure => installed,
    source => '\\\ESSIWK170.ad.umd.edu\Deployment\Google Chrome\googlechromestandaloneenterprise64.msi',
    install_options => ['/qn'],
  }
  package { 'Mozilla Firefox 61.0.1 (x64 en-US)':
    ensure => installed,
    source => '\\\ESSIWK170.ad.umd.edu\Deployment\Mozilla Firefox\Firefox Setup 61.0.1.exe',
    install_options => ['-ms'],
  }
  package { 'EB629A98-5E69-40E8-BA9E-C393899F959D':
    ensure => installed,
    source => '\\\ESSIWK170.ad.umd.edu\Deployment\Cisco AnyConnect\anyconnect-win-4.4.03034-core-vpn-predeploy-k9.msi',
    install_options => ['/norestart','/passive'],
  }
  package { 'SSH Tectia Client':
    ensure => installed,
    source => '\\\ESSIWK170.ad.umd.edu\Deployment\TectiaClient\Setup.exe',
    install_options => ['/s','/f1"\\\ESSIWK170.ad.umd.edu\Deployment\TectiaClient\setup.iss"'],
  }
}
