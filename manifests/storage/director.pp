# Define a Director who is permitted to contact this Storage daemon.
define bacula::storage::director($password, $monitor = false)
{
	include bacula::storage::config

	file_fragment { "bacula::storage::director($name)":
		path => $bacula::storage::config::config_file,
		content => template("bacula/bacula-sd.conf.director")
	}
}
