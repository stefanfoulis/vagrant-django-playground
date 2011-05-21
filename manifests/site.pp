node "node1" {
	include apt_defaults
	include nginx
	include postgresql
	include pythonstuff
	include fun
	
	include divio
	import "projects/*"
}