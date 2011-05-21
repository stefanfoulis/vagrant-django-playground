class pythonstuff {
	$packagelist = ['python-setuptools', 'python-pip', 'python-imaging', 'python-psycopg2', 'python-lxml']
	package { $packagelist:
		ensure => installed
	}
}