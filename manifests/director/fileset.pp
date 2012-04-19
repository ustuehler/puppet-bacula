# Define a FileSet resource.
define bacula::director::fileset($content, $comment = '')
{
	include bacula::director::config

	file_fragment { "bacula::director::fileset($name)":
		path => $bacula::director::config::config_file,
		content => template("bacula/bacula-dir.conf.fileset")
	}
}

