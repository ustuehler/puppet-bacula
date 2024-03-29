# Manage the Director configuration file (bacula-dir.conf).
class bacula::director::config($password)
    inherits bacula::director::install
{
	$config_file = "$config_dir/bacula-dir.conf"

	file_concat { $config_file:
		owner => root,
		group => $group,
		mode => 440,
		require => Class['bacula::director::install']
	}

	file_fragment { $name:
		path => $config_file,
		content => template("bacula/bacula-dir.conf"),
		order => 00
	}
}
