class sonarr::config inherits sonarr {

  include ::systemd
  file { '/lib/systemd/system/sonarr.service':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => epp('sonarr/sonarr.service.epp'),
  } ~>
  Exec['systemctl-daemon-reload']

}
