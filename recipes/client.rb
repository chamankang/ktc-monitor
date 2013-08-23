#
# CookBook:: ktc-monitor
# Recipe:: client
#

# include recipes from our run_list attribute
#
node[:monitor][:client_recipes].each do |recipe|
  include_recipe recipe
end
