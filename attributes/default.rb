include_attribute "graphite"
include_attribute "ktc-sensu"

default[:monitor][:recipes_server_collectd] = %w{
}

default[:monitor][:recipes_server_graphite] = %w{
}

default[:monitor][:recipes_server_sensu] = %w{
}

default[:monitor][:recipes_client] = %w{
}

default[:monitor][:splunk][:ip] = ""
default[:monitor][:splunk][:port] = ""

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
