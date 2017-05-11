#
# Cookbook Name:: env_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("In 0.4.0 env")
node.default[:env_cookbook][:some_val] = "from recipe"

Chef::Log.info("vale of some_val = #{node[:env_cookbook][:some_val]}")
