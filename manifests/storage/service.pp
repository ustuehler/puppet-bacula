# Manage the Bacula Storage service (bacula-sd).
class bacula::storage::service inherits bacula::storage::config
{
	case $operatingsystem {
	    Debian: {
		service { bacula-sd:
			enable => true,
			ensure => running,
			hasstatus => true,
			subscribe => File_concat[$config_file]
		}
	    }

	    default: {
		fail("$operatingsystem is currently unsupported")
	    }
	}
}


