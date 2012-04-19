# Define a Storage service.
define bacula::director::storage($address, $password)
{
	include bacula::director::config

	file_fragment { "bacula::director::storage($name)":
		path => $bacula::director::config::config_file,
		content => template("bacula/bacula-dir.conf.storage")
	}
}
