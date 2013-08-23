#
# Base run list requirements for monitoring
#
default[:monitor][:server_recipes] = []

default[:monitor][:server_recipes].concat %w{
  graphite::graphite
  graphite::carbon
  collectd-graphite::collectd-listener
  ktc-sensu::master
}
