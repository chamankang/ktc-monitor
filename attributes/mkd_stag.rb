#
# Attributes for mkd_stag environment
#

return unless chef_environment == "mkd_stag"

include_attribute "ktc-monitor::default"
include_attribute "ktc-gdash::default"

default[:monitor][:recipes_server_collectd] = %w{
  graphite
  collectd::server
  ktc-collectd::client_graphite
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

# TODO: This endpoint should be handled with Services library in ktc-sensu.
default[:sensu][:graphite_address] = "monitor01-vm.mkd-stag"

# TODO: This endpoint should be handled with Services library in ktc-gdash.
# This url should be IP address, not hostname.
default[:gdash][:graphite_url] = "http://20.0.1.228:80"
default[:gdash][:title] = "Mkd-Staging"
