#
# Attributes for mkd_stag environment
#

return unless chef_environment == 'mkd_stag'

include_attribute 'ktc-monitor::default'

default[:monitor][:recipes_server_collectd] = %w(
  collectd::server
  ktc-collectd::client_graphite
  ktc-collectd::client_splunk
)

# Forward metrics to Splunk
default[:monitor][:splunk][:ip] = '20.0.1.224'
default[:monitor][:splunk][:port] = '4110'

# TODO: This endpoint should be handled with Services library in ktc-sensu.
default[:sensu][:graphite_address] = 'graphite01-vm.mkd-stag'
default[:sensu][:hipchat_room] = 'alert-mkd-stag'
default['sensu']['mail_to'] = [
  'js.ahn@kt.com',
  'hyunsun.moon@kt.com',
  'sh.chung@kt.com',
  'sunhee.ahn@kt.com',
  'hhjeon@kt.com',
  'leeseul.jeong@kt.com',
  'andrew.kong@kt.com',
  'james.clark@kt.com',
  'wil.reichert@kt.com',
  'taeil.choi@kt.com',
  'hho.choi@kt.com',
  'chaman.kang@kt.com',
  'dongwon.cho@kt.com',
  'harry.sung@kt.com'
]

default[:gdash][:title] = 'Mkd-Staging'
