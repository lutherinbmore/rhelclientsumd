class arcgis10 {
  package { 'ArcGIS Desktop 10.6':
  ensure => installed,
  source => '\\\essi12.umd.edu\deployment-share\ArcGIS10.6\Setup.exe',
  install_options => ['ADDLOCAL=ALL','SOFTWARE_CLASS=Professional','SEAT_PREFERENCE=Fixed','DESKTOP_CONFIG=TRUE','/qb'],
  }
  file {'c:\arctest.py':
    ensure => file,
    source => 'puppet:///modules/arcgis10/arctest.py',
    source_permissions => ignore,
  }
  exec { 'python.exe c:\arctest.py':
    path => 'C:\Python27\ArcGIS10.6\\',
    require => File['c:\arctest.py'],
    creates => 'C:\Program Files (x86)\ArcGIS\Desktop10.6\licensed',
  }
}
