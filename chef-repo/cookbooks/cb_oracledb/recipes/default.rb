#
# Cookbook Name:: cb_oracledb
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info('Inside cb_oracledb')

Chef::Log.info("DB Version #{node[:cb_oracledb][:db_version]}")
