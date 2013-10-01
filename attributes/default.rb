include_attribute "graphite"
include_attribute "ktc-sensu"

default[:monitor][:recipes_server_collectd] = %w{
  collectd::server
  ktc-collectd::client_graphite
}

default[:monitor][:recipes_server_graphite] = %w{
  graphite
}

default[:monitor][:recipes_server_sensu] = %w{
  ktc-sensu::master
}

default[:monitor][:recipes_client] = %w{
  ktc-collectd::client_collectd
  ktc-sensu::client
}

default[:sensu][:graphite_address] = ""
default[:sensu][:graphite_port] = 2003
default[:sensu][:hipchat_room] = "sensu-alert"

default['graphite']['storage_schemas'] = [
  {
    'name' => 'catchall',
    'pattern' => '^.*',
    'retentions' => '60s:30d,900s:1y'
  }
]
