#
# Cookbook Name:: cb_version
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info "From Cookbook version 0.2.0"


run_context.cookbook_collection.each do |key, cookbook|
node.default['cb_version']['cookbook_versions'][cookbook.name] = cookbook.version
Chef::Log.info("I am in version #{node['cb_version']['cookbook_versions'][cookbook.name]}")
end
