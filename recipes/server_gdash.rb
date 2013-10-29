#
# CookBook:: ktc-monitor
# Recipe:: server_gdash
#

# include recipes from our run_list attribute
#
node[:monitor][:recipes_server_gdash].each do |recipe|
  include_recipe recipe
end
