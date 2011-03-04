# Install the Bacula storage daemon (bacula-sd).
class bacula::storage
{
	$class = inline_template("${name}::<%= operatingsystem.downcase %>")
	require $class
}
