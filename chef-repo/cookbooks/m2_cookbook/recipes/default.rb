#
# Cookbook Name:: m2_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

Chef::Log.info (" VALUE from #{node['m2_cookbook']['testvalue']}" )

remote_file node['m2_cookbook']['git_installer_file_path'] do
  source "#{node['m2_cookbook']['git_url']}/#{node['m2_cookbook']['git_installer']}"
  action :create
 not_if { File.exists?(node['m2_cookbook']['git_installer_file_path']) }
end

execute 'install_git' do
 command "#{node['m2_cookbook']['git_installer_file_path']} /SILENT"
 not_if { File.exists?(node['m2_cookbook']['git_installer_install_path']) }
end
