name              "ktc-monitor"
maintainer        "Robert Choi"
license           "Apache 2.0"
description       "monitoring cookbook"
version '1.0.5'

%w{ centos ubuntu }.each do |os|
    supports os
end

depends "graphite"
depends "ktc-collectd"
depends "ktc-sensu"
depends "ktc-gdash"
