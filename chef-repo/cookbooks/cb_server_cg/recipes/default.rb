#
# Cookbook Name:: cb_server_cg
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template '/etc/server_cg.xml' do
  source 'server_config.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    http_port: node[:cb_server_cg][:server][:http_port],
    ajp_port: node[:cb_server_cg][:server][:ajp_port],
    redirect_port: node[:cb_server_cg][:server][:redirect_port]
  })
end
