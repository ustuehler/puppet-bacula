# Define a backup or restore Job.
define bacula::director::job($comment, $client, $fileset, $accurate = false,
    $jobdefs = "", $type = "", $messages = "", $level = "", $content = "")
{
	include bacula::director::config

	file_fragment { "bacula::director::job($name)":
		path => $bacula::director::config::config_file,
		content => template("bacula/bacula-dir.conf.job")
	}
}
