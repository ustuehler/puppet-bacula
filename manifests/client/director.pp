# Define a Director who is permitted to contact this File daemon.
define bacula::client::director($password, $monitor = false)
{
	include bacula::client::config

	file_fragment { "bacula::client::director($name)":
		path => $bacula::client::config::config_file,
		content => template("bacula/bacula-fd.conf.director")
	}
}
