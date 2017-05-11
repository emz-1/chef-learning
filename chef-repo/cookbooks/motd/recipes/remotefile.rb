#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Info log message")


remote_file 'd:/chef/LearningChef/chefT/Git-2.12.2.2-64-bit.exe' do
  source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
  action :create
 not_if { File.exists?('d:/chef/LearningChef/chefT/Git-2.12.2.2-64-bit.exe') }
end

execute 'install_git' do
 command 'd:/chef/LearningChef/chefT/Git-2.12.2.2-64-bit.exe /SILENT'
 not_if { File.exists?('C:/Program Files/Git/bin/git.exe') }
end
