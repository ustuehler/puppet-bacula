# Define a FileSet resource.
define bacula::director::fileset($content, $comment = '')
{
	include bacula::director::config

	concat::fragment { "bacula::director::fileset($name)":
		target => $bacula::director::config::config_file,
		content => template("bacula/bacula-dir.conf.fileset")
	}
}

