# vim: set ft=ruby:
site :opscode

metadata
group "ktc" do
  cookbook 'ktc-sensu',
    github: 'cloudware-cookbooks/ktc-sensu'
end

# These RCB-based cookbooks will be replaced with new internal cookbooks that use stackforge's library.
group "other" do
  cookbook "collectd", 
    github: "rcbops-cookbooks/collectd", branch: "grizzly"
  cookbook "collectd-plugins", 
    github: "rcbops-cookbooks/collectd-plugins", branch: "grizzly"
  cookbook "collectd-graphite", 
    github: "cloudware-cookbooks/collectd-graphite", branch: "develop"
  cookbook "graphite", 
    github: "rcbops-cookbooks/graphite", branch: "grizzly"
end

group "integration" do
  cookbook 'chef-solo-search',
    github: 'edelight/chef-solo-search'
end
