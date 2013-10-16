# vim: ft=sh:
# only run on rhel
@test "should have collectd running" {
  [ "$(ps aux | grep collectd | grep -v grep)" ]
}

@test "should have carbon-cache running" {
  [ "$(ps aux | grep carbon-cache | grep -v grep)" ]
}
