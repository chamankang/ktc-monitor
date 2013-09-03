# vim: ft=sh:
# only run on rhel
@test "should have collectd running" {
  [ "$(ps aux | grep collectd | grep -v grep)" ]
}

@test "should have sensu running" {
  [ "$(ps aux | grep sensu | grep -v grep)" ]
}
