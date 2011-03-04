# Install the Bacula director (bacula-dir).
class bacula::director
{
	$class = inline_template("${name}::<%= operatingsystem.downcase %>")
	require $class
}
