class arcgis10 {
  package { 'ArcGIS Desktop 10.6':
  ensure => installed,
  source => '\\\essi12.umd.edu\deployment-share\ArcGIS10.6\Setup.exe',
  install_options => ['ADDLOCAL=ALL','SOFTWARE_CLASS=Professional','SEAT_PREFERENCE=Fixed','DESKTOP_CONFIG=TRUE','/qb'],
  }
}
