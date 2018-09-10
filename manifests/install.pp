class sonarr::install inherits sonarr {

  include ::apt
  apt::source { 'sonarr':
    location => 'http://apt.sonarr.tv/',
    repos    => 'main',
    release  => 'master',
    key      => {
      'id'     => 'FDA5DFFC',
      'server' => 'keyserver.ubuntu.com',
    },
  }

  file { '/opt/NzbDrone':
    ensure  => directory,
    mode    => '0744',
    owner   => "sonarr",
    recurse => true
  }

  file { '/opt/NzbDrone/NzbDrone.exe':
    ensure => file,
    mode => '0744',
  }

  package { ['nzbdrone']:
    ensure => $sonarr::package_ensure,
  }



}
