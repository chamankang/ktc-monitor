include_attribute 'graphite'
include_attribute 'ktc-sensu'
include_attribute 'ktc-gdash::default'

default[:monitor][:recipes_server_collectd] = %w(
  collectd::server
  ktc-collectd::client_graphite
)

default[:monitor][:recipes_server_graphite] = %w(
  ktc-graphite::peer
)

default[:monitor][:recipes_server_graphite_master] = %w(
  ktc-graphite::master
)

default[:monitor][:recipes_server_sensu] = %w(
  ktc-sensu::master
)

default[:monitor][:recipes_server_gdash] = %w(
  ktc-gdash
)

default[:monitor][:recipes_client] = %w(
  ktc-collectd::client_collectd
  ktc-sensu::client
  ktc-monitor::library_setup
)

default[:monitor][:splunk][:ip] = ''
default[:monitor][:splunk][:port] = ''

# Shared library path that contails libraries
# for chef sensu_handler and chef_status script.
default[:monitor][:shared_lib_path] = '/usr/local/lib'
default[:monitor][:rabbit_api_logfile] = '/var/log/rabbit_api.log'

# TODO: This endpoint should be handled with Services library in ktc-sensu.
default[:sensu][:graphite_address] = 'localhost'
default[:sensu][:graphite_port] = 2003
default[:sensu][:hipchat_room] = 'alert-test'

default[:gdash][:title] = 'Test'

default[:graphite][:storage_schemas] = [
  {
    'name' => 'catchall',
    'pattern' => '^.*',
    'retentions' => '60s:30d,900s:1y'
  }
]
