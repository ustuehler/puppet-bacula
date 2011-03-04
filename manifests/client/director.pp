# Define a Director who is permitted to contact this File daemon.
define bacula::client::director($password, $monitor = false)
{
	include bacula::client::config

	concat::fragment { "bacula::client::director($name)":
		target => $bacula::client::config::config_file,
		content => template("bacula/bacula-fd.conf.director")
	}
}
