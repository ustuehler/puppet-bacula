# Manage the Storage daemon configuration file (bacula-sd.conf).
class bacula::storage::config inherits bacula::storage::install
{
	$config_file = "$config_dir/bacula-sd.conf"

	file_concat { $config_file:
		owner => 'bacula',
		group => 'bacula',
		mode => '0440',
		require => Class['bacula::storage::install']
	}

	file_fragment { $name:
		path => $config_file,
		content => template("bacula/bacula-sd.conf"),
		order => 00
	}
}

