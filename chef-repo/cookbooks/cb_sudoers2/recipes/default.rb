#
# Cookbook Name:: cb_sudoers2
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

service 'sshd' do
  action :nothing
end

template '/etc/sudoers2' do
  source 'sudoers2.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['cb_sudoers2']['sudo']['groups'],
    sudoers_users: node['cb_sudoers2']['sudo']['users'],
    passwordless: node['cb_sudoers2']['sudo']['passwordless']
  })
  notifies :restart, 'service[sshd]', :immediately
end
