class sonarr (
  String $package_ensure,
  String $service_name,
  Boolean $service_enable,
  String $service_ensure,
  Boolean $service_manage,
  String $user,
  String $group,
) {

  contain ::sonarr::install
  contain ::sonarr::config
  contain ::sonarr::service

  Class['::sonarr::install'] ->
  Class['::sonarr::config'] ~>
  Class['::sonarr::service']

}
