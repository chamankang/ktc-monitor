#
# Attributes for mkd_stag environment
#

return unless chef_environment == "mkd_stag"

include_attribute "ktc-monitor::default"

default[:monitor][:recipes_server_sensu] = %w{
  ktc-sensu::master
  ktc-gdash
}

# TODO: This endpoint should be handled with Services library in ktc-sensu.
default[:sensu][:graphite_address] = "monitor01-vm.mkd-stag"

# TODO: This endpoint should be handled with Services library in ktc-gdash.
# This url should be IP address, not hostname.
default[:gdash][:graphite_url] = "http://20.0.1.228:80"
default[:gdash][:title] = "Mkd-Staging"
