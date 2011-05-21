class fun {
	package { cowsay: ensure => installed }
	exec { "cowsay_motd":
		command => "/usr/games/cowsay 'Welcome to the REALM of the UDDER!' > /etc/motd",
		require => Package["cowsay"],
	}
}