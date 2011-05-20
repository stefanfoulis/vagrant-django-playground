define nginx::config($basedir, $servers, $port_number) {
    file { "/etc/nginx/nginx.conf":
        content => template("nginx/nginx.conf.erb"),
        mode => 644,
        owner => root,
        notify => Service[nginx]
    }

    realize Service[nginx]
}
