#
# Attributes for ipc-ng environment
#

return unless chef_environment == "ipc-ng"

include_attribute "ktc-monitor::default"

default[:monitor][:recipes_server_collectd] = %w{
  collectd::server
  ktc-collectd::client_graphite
  ktc-collectd::client_splunk
}

# Forward metrics to Splunk
default[:monitor][:splunk][:ip] = "10.2.2.81"
default[:monitor][:splunk][:port] = "4110"

# TODO: This endpoint shoudl be handled with Services library in ktc-sensu.
default[:sensu][:graphite_address] = "graphite01-vm.mgmt1.ipc-ng"
default[:sensu][:hipchat_room] = "alert-ipc-ng"

default[:gdash][:title] = "IPC-NG"
