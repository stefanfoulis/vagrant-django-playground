# basic puppet

class lucid32 {
  package { "nginx":
    ensure => present,
  }

  service { "nginx":
    ensure => running,
    require => Package["nginx"],
  }
}

include lucid32