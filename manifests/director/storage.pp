# Define a Storage service.
define bacula::director::storage($address, $password)
{
	include bacula::director::config

	concat::fragment { "bacula::director::storage($name)":
		target => $bacula::director::config::config_file,
		content => template("bacula/bacula-dir.conf.storage")
	}
}
