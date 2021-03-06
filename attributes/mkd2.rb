#
# Attributes for mkd2 environment
#

return unless chef_environment == 'mkd2'

include_attribute 'ktc-monitor::default'
include_attribute 'ktc-monitor::chef_status'

# TODO: This endpoint should be handled with Services library in ktc-sensu.
default[:sensu][:graphite_address] = 'graphite01-vm.mkd2.ktc'
default[:sensu][:hipchat_room] = 'alert-mkd2'
default['sensu']['mail_from'] = 'SENSU-MKD2 <sensu@mkd2.ng.kt.com>'
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

default[:gdash][:title] = 'Mkd2'
default[:chef_status][:sufferable_min] = 40
