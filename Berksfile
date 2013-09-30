# vim: set ft=ruby:
site :opscode

metadata
group "ktc" do
  cookbook 'ktc-collectd', github: 'cloudware-cookbooks/ktc-collectd'
  cookbook 'ktc-sensu', git: 'git@github.com:cloudware-cookbooks/ktc-sensu.git', branch: 'develop'
  cookbook 'ktc-utils', github: 'cloudware-cookbooks/ktc-utils', branch: 'develop'
  cookbook 'ktc-etcd', github: 'cloudware-cookbooks/ktc-etcd'
end

group "other" do
  cookbook "yum", github: 'opscode-cookbooks/yum'
  cookbook "ubuntu", github: 'opscode-cookbooks/ubuntu'
  cookbook "memcached", github: "opscode-cookbooks/memcached"
  cookbook "collectd", github: "miah/chef-collectd"
  cookbook "graphite", github: "hw-cookbooks/graphite"
  cookbook "services", github: "spheromak/services-cookbook"
  cookbook 'openstack-common', github: 'stackforge/cookbook-openstack-common'
end

group "integration" do
  cookbook 'chef-solo-search', github: 'edelight/chef-solo-search'
  cookbook "etcd", "~> 1.2.4"
end
