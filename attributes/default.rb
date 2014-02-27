include_attribute 'graphite'
include_attribute 'ktc-sensu'
include_attribute 'ktc-gdash::default'

default[:monitor][:recipes_server_collectd] = %w{
  collectd::server
  ktc-collectd::client_graphite
}

default[:monitor][:recipes_server_graphite] = %w{
  ktc-graphite::peer
}

default[:monitor][:recipes_server_graphite_master] = %w{
  ktc-graphite::master
}

default[:monitor][:recipes_server_sensu] = %w{
  ktc-sensu::master
}

default[:monitor][:recipes_server_gdash] = %w{
  ktc-gdash
}

default[:monitor][:recipes_client] = %w{
  ktc-collectd::client_collectd
  ktc-sensu::client
}

default[:monitor][:splunk][:ip] = ''
default[:monitor][:splunk][:port] = ''

# TODO: This endpoint should be handled with Services library in ktc-sensu.
default[:sensu][:graphite_address] = 'localhost'
default[:sensu][:graphite_port] = 2003
default[:sensu][:hipchat_room] = 'alert-test'

# TODO: This endpoint should be handled with Services library in ktc-gdash.
# This url should be IP address, not hostname.
default[:gdash][:graphite_url] = 'http://127.0.0.1'
default[:gdash][:title] = 'Test'

default[:graphite][:storage_schemas] = [
  {
    'name' => 'catchall',
    'pattern' => '^.*',
    'retentions' => '60s:30d,900s:1y'
  }
]
