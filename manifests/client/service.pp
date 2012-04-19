# Manage the File Daemon service (bacula-fd).
class bacula::client::service inherits bacula::client::config
{
	case $operatingsystem {
	    Debian: {
		service { bacula-fd:
			enable => true,
			ensure => running,
			hasstatus => true,
			subscribe => File_concat[$config_file]
		}
	    }

	    OpenBSD: {
		service { bacula-fd:
			provider => base,
			ensure => running,
			start => "/etc/rc.d/bacula_fd start",
			status => "/etc/rc.d/bacula_fd check",
			stop => "/etc/rc.d/bacula_fd stop",
			restart => "/etc/rc.d/bacula_fd restart",
			subscribe => File_concat[$config_file]
		}
	    }

	    default: {
		fail("$operatingsystem is currently unsupported")
	    }
	}
}
