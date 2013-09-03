# vim: set ft=ruby:
site :opscode

metadata
group "ktc" do
  cookbook 'ktc-collectd', github: 'cloudware-cookbooks/ktc-collectd'
  cookbook 'ktc-sensu', github: 'cloudware-cookbooks/ktc-sensu'
end

group "other" do
  cookbook "collectd", github: "miah/chef-collectd"
  cookbook "graphite", github: "hw-cookbooks/graphite"
end

group "integration" do
  cookbook 'chef-solo-search',
    github: 'edelight/chef-solo-search'
end
