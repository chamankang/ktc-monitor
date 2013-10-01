#
# CookBook:: ktc-monitor
# Recipe:: server_collectd
#

# include recipes from our run_list attribute
#
node[:monitor][:recipes_server_collectd].each do |recipe|
  include_recipe recipe
end
