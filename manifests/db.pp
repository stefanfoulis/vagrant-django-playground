# basic puppet

class db {
  # Run apt-get update when anything beneath /etc/apt/ changes
  exec { "apt-get update":
    command => "/usr/bin/apt-get update && touch /tmp/apt.update",
    onlyif => "/bin/sh -c '[ ! -f /tmp/apt.update ] || /usr/bin/find /etc/apt -cnewer /tmp/apt.update | /bin/grep . > /dev/null'",
  }


  package { "postgresql":
    ensure => present,
  }

  service { "postgresql":
    ensure => running,
    require => Package["postgresql"],
  }
}

include db