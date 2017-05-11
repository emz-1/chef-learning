#
# Cookbook Name:: cb_java
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info('Inside cb_java')
Chef::Log.info("java_version #{node[:cb_java][:java_version]}")
