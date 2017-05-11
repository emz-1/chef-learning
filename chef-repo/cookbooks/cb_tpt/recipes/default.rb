#
# Cookbook Name:: cb_tpt
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template '/etc/programs_version.txt' do
  source 'programs_version.erb'
  mode '0440'
  owner 'root'
  group 'root'
end
