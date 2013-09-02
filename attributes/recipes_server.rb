#
# Base run list requirements for monitoring
#
default[:monitor][:server_recipes] = []

default[:monitor][:server_recipes].concat %w{
  graphite
  collectd::server
  ktc-collectd::client_graphite
  ktc-sensu::master
}
