#
# CookBook:: ktc-monitor
# Recipe:: library_setup
#

cookbook_file "#{node['monitor']['shared_lib_path']}/_rabbitmq.rb" do
  source 'rabbitmq.rb'
  mode 0640
  action :create
end

template "#{node['monitor']['shared_lib_path']}/rabbit_api.rb" do
  source 'rabbit_api.rb.erb'
  mode 0640
  action :create
end
