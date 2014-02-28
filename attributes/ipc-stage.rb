#
# Attributes for mkd_stag environment
#

return unless chef_environment == 'ipc-stage'

include_attribute 'ktc-monitor::default'

default[:monitor][:recipes_server_collectd] = %w{
  collectd::server
  ktc-collectd::client_graphite
  ktc-collectd::client_splunk
}

# Forward metrics to Splunk
default[:monitor][:splunk][:ip] = '10.2.2.81'
default[:monitor][:splunk][:port] = '4110'

# TODO: This endpoint should be handled with Services library in ktc-sensu.
default[:sensu][:graphite_address] = 'monitor01-vm.mgmt1.ipc-stage'
default[:sensu][:hipchat_room] = 'alert-ipc-stage'

# TODO: This endpoint should be handled with Services library in ktc-gdash.
# Until then, manually set graphite IP here or environment file.
# This url should be IP address, not hostname.
default[:gdash][:graphite_url] = 'http://10.9.241.62:80'
default[:gdash][:title] = 'IPC-Staging'
