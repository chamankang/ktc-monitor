if Chef::Config.chef_server_url.include?(node['fqdn']) ||
  Chef::Config.chef_server_url.include?(node['ipaddress'])
  include_recipe 'services'
  include_recipe 'ktc-chef'
 
  ep = Services::Endpoint.new 'sensu-rabbitmq'
  ep.load
 
  Chef::Log.info("rabbit host: #{ep.ip}")
  Chef::Log.info("rabbit port: #{ep.port}")
 
  args = {}
  if node['kitchen']
    args = {
      host: 'localhost',
      port: 5671,
      file: '/etc/sensu/config.json'
    }
  else
    args = {
      host: ep.ip,
      port: ep.port.to_i,
      file: '/etc/sensu/config.json'
    }
  end
 
  template node['chef_status']['script'] do
    source 'chef-status.erb'
    mode 0700
    owner 'root'
    group 'root'
    variables(
      hipchat_api_token: node['kt']['hipchat']['api_token'],
      sufferable_min: node['chef_status']['sufferable_min'],
      rabbit_api_file: "#{node['monitor']['shared_lib_path']}/rabbit_api.rb",
      rabbit_config: args
    )
  end

  cmd = "#{node['chef_status']['script']} > #{node['chef_status']['log_file']}"
  cmd << " 2>&1"
  cron_d 'chef-status' do
    minute  node['chef_status']['cron']['minute']
    hour    node['chef_status']['cron']['hour']
    path    node['chef_status']['cron']['path'] if node['chef_status']['cron']['path']
    user    'root'
    command cmd
  end
end
