class arcgis10 {
  package { 'ArcGIS Desktop 10.6':
  ensure => installed,
  source => '\\\essi12.umd.edu\deployment-share\ArcGIS10.6\Setup.exe',
  install_options => ['ADDLOCAL=ALL','SOFTWARE_CLASS=Professional','SEAT_PREFERENCE=Fixed','DESKTOP_CONFIG=TRUE','/qb'],
  }
  file {'c:\ArcGISActivation.ps1':
    ensure => file,
    source => 'puppet:///modules/arcgis10/ArcGISActivation.ps1',
    source_permissions => ignore,
  }
  exec { 'powershell.exe -executionpolicy remotesigned -file c:\ArcGISActivation.ps1':
    path => 'C:\Windows\System32\WindowsPowerShell\v1.0\\',
    require => File['c:\ArcGISActivation.ps1'],Package['ArcGIS Desktop 10.6'],
    creates => 'C:\Program Files (x86)\ArcGIS\Desktop10.6\licensed',
  }
}
