# FIXME: Explicit import because autoloading doesn't seem to work when
# exported resources are created with Bacula::Director::Client<<||>>.
import 'bacula/director/client.pp'
import 'bacula/director/fileset.pp'
import 'bacula/director/job.pp'

# Manage the Bacula director on this node (bacula-dir).
class bacula::director($password)
{
	class { config:
		password => $password
	}

	require install, service
}
