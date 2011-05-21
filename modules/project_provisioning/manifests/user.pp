define project_provisioning::user( $name, $full_name ) {
	user { $name :
		comment => $full_name,
		managehome => true,
	}
}