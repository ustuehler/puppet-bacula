# Manage the File Daemon service (bacula-fd).
class bacula::client::service inherits bacula::client::config
{
	case $operatingsystem {
	    Debian: {
		service { bacula-fd:
			enable => true,
			ensure => running,
			hasstatus => true,
			subscribe => File[$config_file]
		}
	    }

	    default: {
		fail("$operatingsystem is currently unsupported")
	    }
	}
}
