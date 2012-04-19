# Define a Client (File service) to backup or restore.
define bacula::director::client($address, $password)
{
	include bacula::director::config

	file_fragment { "bacula::director::client($name)":
		path => $bacula::director::config::config_file,
		content => template("bacula/bacula-dir.conf.client")
	}
}
