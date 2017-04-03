class sonarr::service inherits sonarr {

  if ! ($service_ensure in [ 'running', 'stopped' ]) {
    fail('service_ensure parameter must be running or stopped')
  }

  if $sonarr::service_manage == true {
    service { 'sonarr':
      ensure     => $sonarr::service_ensure,
      enable     => $sonarr::service_enable,
      name       => $sonarr::service_name,
      hasstatus  => true,
      hasrestart => true,
    }
  }

}
