# Install Bacula storage (bacula-sd) from Debian packages.
class bacula::storage::debian
{
	package { bacula-sd-sqlite3:
		ensure => installed
	}->service { bacula-sd:
		enable => true,
		ensure => running,
		hasstatus => true
	}
}
