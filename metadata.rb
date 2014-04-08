name              'ktc-monitor'
maintainer        'Robert Choi'
license           'Apache 2.0'
description       'monitoring cookbook'
version '1.0.13'

%w(centos ubuntu).each do |os|
  supports os
end

depends 'ktc-graphite'
depends 'ktc-collectd'
depends 'ktc-sensu'
depends 'ktc-gdash'
