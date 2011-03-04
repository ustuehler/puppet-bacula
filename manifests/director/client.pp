# Define a Client (File service) to backup or restore.
define bacula::director::client($address, $password)
{
	include bacula::director::config

	concat::fragment { "bacula::director::client($name)":
		target => $bacula::director::config::config_file,
		content => template("bacula/bacula-dir.conf.client")
	}
}
