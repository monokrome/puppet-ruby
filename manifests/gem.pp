class ruby::gem {
	package {
		"rubygems":
			ensure => installed,
	}
}
