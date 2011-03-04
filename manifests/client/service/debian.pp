# Manage the bacula-fd service on Debian.
class bacula::client::service::debian
{
	service { bacula-fd:
		enable => true,
		ensure => running,
		hasstatus => true
	}
}
