# Manage the File Daemon configuration file (bacula-fd.conf).
class bacula::client::config inherits bacula::client::install
{
	$config_file = "$config_dir/bacula-fd.conf"

	concat { $config_file:
		owner => root,
		group => 0,
		mode => 440,
		require => Class['bacula::client::install']
	}

	concat::fragment { $name:
		target => $config_file,
		content => template("bacula/bacula-fd.conf"),
		order => 00
	}
}
