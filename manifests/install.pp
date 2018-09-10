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

  package { ['nzbdrone']:
    ensure => $sonarr::package_ensure,
  }

}
