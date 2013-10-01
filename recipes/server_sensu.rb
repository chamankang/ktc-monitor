#
# CookBook:: ktc-monitor
# Recipe:: server_sensu
#

# include recipes from our run_list attribute
#
node[:monitor][:recipes_server_sensu].each do |recipe|
  include_recipe recipe
end
