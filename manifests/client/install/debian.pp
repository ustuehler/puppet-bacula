# Install Bacula client (bacula-fd) from Debian packages.
class bacula::client::install::debian
{
	package { bacula-client:
		ensure => installed
	}
}
