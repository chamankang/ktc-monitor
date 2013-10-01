#
# Attributes for ipc_ng environment
#

return unless chef_environment == "ipc_ng"

include_attribute "ktc-monitor::default"

default[:monitor][:recipes_server_collectd] = %w{
  graphite
  collectd::server
  ktc-collectd::client_graphite
}

default[:monitor][:recipes_server_graphite] = %w{
}

default[:monitor][:splunk][:ip] = "10.2.2.81"
default[:monitor][:splunk][:port] = "4110"

# TODO: This endpoint shoudl be handled with Services library in ktc-sensu.
default[:sensu][:graphite_address] = "monitor01-vm.mgmt1.ipc-ng"
