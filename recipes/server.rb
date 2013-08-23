#
# CookBook:: ktc-monitor
# Recipe:: server
#

# include recipes from our run_list attribute
#
node[:monitor][:server_recipes].each do |recipe|
  include_recipe recipe
end
