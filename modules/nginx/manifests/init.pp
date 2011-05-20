class nginx {
	package { nginx: ensure => installed }

    # Create the server as a virtual resource, so config instances
    # can enable it.
    @service { nginx:
        ensure => running,
        enable => true
    }
}