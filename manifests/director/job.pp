# Define a backup or restore Job.
define bacula::director::job($comment, $client, $fileset, $accurate = false,
    $jobdefs = "", $type = "", $messages = "", $level = "", $content = "")
{
	include bacula::director::config

	concat::fragment { "bacula::director::job($name)":
		target => $bacula::director::config::config_file,
		content => template("bacula/bacula-dir.conf.job")
	}
}
