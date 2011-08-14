# Install the Bacula file daemon (bacula-fd).
class bacula::client::install
{
	case $operatingsystem {
	    Debian: {
		package { bacula-client:
			ensure => present
		}

		$config_dir = "/etc/bacula"
		$work_dir = "/var/lib/bacula"
		$pid_dir = "/var/run/bacula"
		$plugin_dir = "/usr/lib/bacula"
	    }

	    OpenBSD: {
		package { bacula-client:
			ensure => present
		}

		$config_dir = "/etc/bacula"
		$work_dir = "/var/bacula"
		$pid_dir = "/var/run"
		$plugin_dir = "/usr/local/lib"
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

		$plugin_dir = inline_template("<%=scope.lookupvar '${class}::plugin_dir'%>")
		if !$plugin_dir { fail("missing \$${class}::plugin_dir") }
	    }
	}
}
