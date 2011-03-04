# Install Bacula director (bacula-dir) from Debian packages.
class bacula::director::debian
{
	package { bacula-director-sqlite3:
		ensure => installed
	}->service { bacula-director:
		enable => true,
		ensure => running,
		hasstatus => true
	}
}
