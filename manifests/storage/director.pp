# Define a Director who is permitted to contact this Storage daemon.
define bacula::storage::director($password, $monitor = false)
{
	include bacula::storage::config

	concat::fragment { "bacula::storage::director($name)":
		target => $bacula::storage::config::config_file,
		content => template("bacula/bacula-sd.conf.director")
	}
}
