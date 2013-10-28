#
# Attributes for mkd_stag environment
#

return unless chef_environment == "mkd_stag"

include_attribute "ktc-monitor::default"

default[:monitor][:recipes_server_collectd] = %w{
  graphite
  collectd::server
  ktc-collectd::client_graphite
}

default[:monitor][:recipes_server_graphite] = %w{
}

default[:monitor][:recipes_server_sensu] = %w{
  ktc-sensu::master
}

default[:monitor][:recipes_client] = %w{
  ktc-collectd::client_collectd
  ktc-sensu::client
}

# TODO: This endpoint should be handled with Services library in ktc-sensu.
default[:sensu][:graphite_address] = "monitor01-vm.mkd-stag"
