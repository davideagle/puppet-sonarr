class sonarr::install inherits sonarr {

  package { ['nzbdrone']:
    ensure => $sonarr::package_ensure,
  }

}
