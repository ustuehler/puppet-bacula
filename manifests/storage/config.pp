# Manage the Storage daemon configuration file (bacula-sd.conf).
class bacula::storage::config inherits bacula::storage::install
{
	$config_file = "$config_dir/bacula-sd.conf"

	concat { $config_file:
		owner => root,
		group => 0,
		mode => 440,
		require => Class['bacula::storage::install']
	}

	concat::fragment { $name:
		target => $config_file,
		content => template("bacula/bacula-sd.conf"),
		order => 00
	}
}

