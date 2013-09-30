#
# Attributes for ipc_ng environment
#

return unless chef_environment == "ipc_ng"

include_attribute "ktc-monitor::default"

default[:monitor][:recipes_server_collectd] = []
default[:monitor][:recipes_server_collectd].concat %w{
  graphite
  collectd::server
  ktc-collectd::client_graphite
}

default[:monitor][:recipes_server_sensu] = []
default[:monitor][:recipes_server_sensu].concat %w{
  ktc-sensu::master
}

default[:monitor][:recipes_client] = []
default[:monitor][:recipes_client].concat %w{
  ktc-collectd::client_collectd
  ktc-sensu::client
}

default[:monitor][:splunk][:ip] = "10.2.2.81"
default[:monitor][:splunk][:port] = "4110"

default[:sensu][:graphite_address] = "monitor01-vm.mgmt1.ipc-ng"
default[:sensu][:graphite_port] = 2003
default[:sensu][:hipchat_room] = "sensu-alert"
