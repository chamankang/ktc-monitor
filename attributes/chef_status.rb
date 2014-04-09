default[:chef_status][:script] = '/usr/local/bin/chef-status'
default[:chef_status][:sufferable_min] = 40

default[:chef_status][:cron][:hour] = '*'
default[:chef_status][:cron][:minute] = '*/15'
default[:chef_status][:log_file] = '/var/log/chef/status.log'
