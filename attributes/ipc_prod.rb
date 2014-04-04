#
# Attributes for ipc-prod environment
#

return unless chef_environment == 'ipc-prod'

include_attribute 'ktc-monitor::default'

default[:monitor][:recipes_server_collectd] = %w(
  collectd::server
  ktc-collectd::client_graphite
  ktc-collectd::client_splunk
)

# Forward metrics to Splunk
default[:monitor][:splunk][:ip] = '10.2.2.81'
default[:monitor][:splunk][:port] = '4110'

# TODO: This endpoint shoudl be handled with Services library in ktc-sensu.
default[:sensu][:graphite_address] = 'graphite01-vm.c50704.mpod1.mgmt-prod.ipc-ng'
default[:sensu][:hipchat_room] = 'alert-ipc-prod'
default['sensu']['mail_from'] = 'SENSU-IPC-PROD <sensu@ipc-prod.ng.kt.com>'
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
  'harry.sung@kt.com',
  'deokhan.song@kt.com',
  'taeho.kwon@kt.com'
]

default[:gdash][:title] = 'IPC-PROD'
