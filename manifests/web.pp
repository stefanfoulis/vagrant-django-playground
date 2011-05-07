# basic puppet

class web {
  package { "nginx":
    ensure => present,
  }

  service { "nginx":
    ensure => running,
    require => Package["nginx"],
  }
}

include web