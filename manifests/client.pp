# Manage the Bacula client on this node (bacula-fd).
class bacula::client
{
	require install
	require config
	require service
}
