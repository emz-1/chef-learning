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

cookbook_file '/root/license.txt' do
  source 'license_1.2.0.txt'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

file '/root/installdetails.txt' do
  content <<-'EOF'
  Chef
  perl
  ruby
  php
  EOF
  mode '0755'
  owner 'root'
  group 'root'
end

#platform: oracle
template '/etc/motd' do
  source 'motd.erb'
  owner 'root'
  group 'root'
  mode '0755'
end

#
if node['platform'] == "oracle"
  Chef::Log.info "Its Oracle"
elsif node['platform'] == "ubuntu"
  Chef::Log.info "It's Ubuntu"
end
