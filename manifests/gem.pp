class ruby::gem {
	define install($package_name) {
		exec {
			"ruby::gem::install::${name}":
				command => "gem install ${package_name}",
				path => ["/sbin/", "/bin", "/usr/bin", "/usr/local/bin"],
				require => package["rubygems"],
		}
	}

	package {
		"rubygems":
			ensure => installed,
	}
}

