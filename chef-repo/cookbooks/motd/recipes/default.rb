#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Info log message")

directory "/etc/apache/test1/test2" do
	owner 'root'
        group 'root'
        mode '0755'
	recursive true
	action :create
end

%w["/etc/apache1", "/etc/apache2/test3/test4" ].each do |path|
 directory path do
	owner 'root'
        group 'root'
        mode '0755'
	recursive true
	action :create
 end
end


remote_file '/c/chef' do
  source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
  action :create
end
