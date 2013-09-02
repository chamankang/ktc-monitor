#
# Run list requirements for monitoring client
#
default[:monitor][:client_recipes] = []

default[:monitor][:client_recipes].concat %w{
  ktc-collectd::client_collectd
  ktc-sensu::client
}
