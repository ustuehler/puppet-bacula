# FIXME: Explicit import because autoloading doesn't seem to work when
# exported resources are created with Bacula::Client::Director<<||>>.
import 'bacula/client/director.pp'

# Manage the Bacula client on this node (bacula-fd).
class bacula::client
{
	require install, config, service
}
