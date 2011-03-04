# FIXME: Explicit import because autoloading doesn't seem to work when
# exported resources are created with Bacula::Storage::Director<<||>>.
import 'bacula/storage/director.pp'

# Manage the Bacula storage daemon (bacula-sd).
class bacula::storage
{
	require install, config, service
}
