#
Chef::Log.info("In Parent")
include_recipe "child::child"

Chef::Log.info("Value access from Child #{node['child']['child_value']}")
