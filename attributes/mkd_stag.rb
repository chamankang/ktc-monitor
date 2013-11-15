#
# Attributes for mkd_stag environment
#

return unless chef_environment == "mkd_stag"

include_attribute "ktc-monitor::default"

default[:monitor][:recipes_server_collectd] = %w{
  collectd::server
  ktc-collectd::client_graphite
  ktc-collectd::client_splunk
}

# Forward metrics to Splunk
default[:monitor][:splunk][:ip] = "20.0.1.224"
default[:monitor][:splunk][:port] = "4110"

# TODO: This endpoint should be handled with Services library in ktc-sensu.
default[:sensu][:graphite_address] = "monitor01-vm.mkd-stag"
default[:sensu][:hipchat_room] = "alert-mkd-stag"

# TODO: This endpoint should be handled with Services library in ktc-gdash.
# Until then, manually set graphite IP here or environment file.
# This url should be IP address, not hostname.
default[:gdash][:graphite_url] = "http://20.0.1.228:80"
default[:gdash][:title] = "Mkd-Staging"
