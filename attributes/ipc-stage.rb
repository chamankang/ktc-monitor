#
# Attributes for mkd_stag environment
#

return unless chef_environment == "ipc-stage"

include_attribute "ktc-monitor::default"
include_attribute "ktc-gdash::default"

default[:monitor][:recipes_server_collectd] = %w{
  graphite
  collectd::server
  ktc-collectd::client_graphite
  ktc-collectd::client_splunk
}

default[:monitor][:recipes_server_graphite] = %w{
}

default[:monitor][:recipes_server_sensu] = %w{
  ktc-sensu::master
  ktc-gdash
}

default[:monitor][:recipes_server_gdash] = %w{
}

default[:monitor][:recipes_client] = %w{
  ktc-collectd::client_collectd
  ktc-sensu::client
}

# Forward metrics to Splunk
default[:monitor][:splunk][:ip] = "10.2.2.81"
default[:monitor][:splunk][:port] = "4110"

# TODO: This endpoint should be handled with Services library in ktc-sensu.
default[:sensu][:graphite_address] = "monitor01-vm.mgmt1.ipc-stage"

# TODO: This endpoint should be handled with Services library in ktc-gdash.
# This url should be IP address, not hostname.
default[:gdash][:graphite_url] = "http://10.9.241.62:80"
default[:gdash][:title] = "IPC-Staging"
