#
# CookBook:: ktc-monitor
# Recipe:: server_graphite
#

# include recipes from our run_list attribute
#
node[:monitor][:recipes_server_graphite].each do |recipe|
  include_recipe recipe
end
