class researchdeployment {
  package { 'MATLAB R2016b':
  ensure => installed,
  source => '\\\essi12.umd.edu\deployment-share\MathWorks MATLAB 2016b\setup.exe',
  install_options => ['-inputFile','\\\essi12.umd.edu\deployment-share\MathWorks MATLAB 2016b\my_installer_input.txt'],
  } ->
  file { 'C:\Users\Public\Desktop\matlab.lnk':
  ensure => file,
  source => 'puppet:///modules/researchdeployment/matlab.lnk',
  source_permissions => ignore,
  }
  package { 'PuTTY release 0.70 (64-bit)':
    ensure => installed,
    source => '\\\essi12.umd.edu\deployment-share\PuTTY\putty-64bit-0.70-installer.msi',
    install_options => ['/norestart','/passive'],
  }
  package { 'IDL 8.6':
  ensure => installed,
  source => '\\\essi12.umd.edu\deployment-share\IDL8.6\idl86-win.exe',
  install_options => ['/LOADINF=\\\essi12.umd.edu\deployment-share\IDL8.6\IDL_only.ini','/SP','/VERYSILENT','/SUPPRESSMSGBOXES','/NOCANCEL','/NORESTART','/FORCECLOSEAPPLICATIONS'],
  }
  file {'c:\IDLActivation.ps1':
    ensure => file,
    source => 'puppet:///modules/researchdeployment/IDLActivation.ps1',
    source_permissions => ignore,
  }
  exec { 'powershell.exe -executionpolicy remotesigned -file c:\IDLActivation.ps1':
    path => 'C:\Windows\System32\WindowsPowerShell\v1.0\\',
    require => [ File['c:\IDLActivation.ps1'],Package['IDL 8.6'] ],
    creates => 'C:\Program Files\Harris\licensed',
  }
  package { 'StarNet FastX 2':
    ensure => installed,
    source => '\\\essi12.umd.edu\deployment-share\FastX\FastX.msi'
    install_options => ['/norestart','/passive'],
  }
}
