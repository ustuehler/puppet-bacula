# Manage the Director service (bacula-dir).
class bacula::director::service inherits bacula::director::config
{
	case $operatingsystem {
	    Debian: {
		service { bacula-director:
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

