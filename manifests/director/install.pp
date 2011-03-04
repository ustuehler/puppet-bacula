# Install the Bacula director daemon (bacula-dir).
class bacula::director::install
{
	case $operatingsystem {
	    Debian: {
		package { bacula-director-sqlite3:
			ensure => installed
		}

		$config_dir = "/etc/bacula"
		$work_dir = "/var/lib/bacula"
		$pid_dir = "/var/run/bacula"
		$query_file = "$config_dir/scripts/query.sql"
	    }

	    default: {
		$class = inline_template("${name}::<%= operatingsystem.downcase %>")
		require $class

		$config_dir = inline_template("<%=scope.lookupvar '${class}::config_dir'%>")
		if !$config_dir { fail("missing \$${class}::config_dir") }

		$work_dir = inline_template("<%=scope.lookupvar '${class}::work_dir'%>")
		if !$work_dir { fail("missing \$${class}::work_dir") }

		$pid_dir = inline_template("<%=scope.lookupvar '${class}::pid_dir'%>")
		if !$pid_dir { fail("missing \$${class}::pid_dir") }

		$query_file = inline_template("<%=scope.lookupvar '${class}::query_file'%>")
		if !$query_file { fail("missing \$${class}::query_file") }
	    }
	}
}

