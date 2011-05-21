class postgresql {
	package { "postgresql":
		ensure => installed,
		name => "postgresql-8.4",
		require => Exec["apt-get update"],
	}
	service { "postgresql-8.4":
		alias => "postgresql",
		ensure => running,
		enable => true,
		hasstatus => true,
		hasrestart => true,
		require => Package["postgresql"],
	}
	# Run apt-get update when anything beneath /etc/apt/ changes
	exec { "apt-get update":
		command => "/usr/bin/apt-get update && touch /tmp/apt.update",
		onlyif => "/bin/sh -c '[ ! -f /tmp/apt.update ] || /usr/bin/find /etc/apt -cnewer /tmp/apt.update | /bin/grep . > /dev/null'",
	}
}