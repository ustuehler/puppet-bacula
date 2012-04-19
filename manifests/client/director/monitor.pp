define bacula::client::director::monitor($password)
{
  bacula::client::director { $name:
    password => $password,
    monitor  => true
  }
}
