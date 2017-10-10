#
# Cookbook:: mongodz
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

cookbook_file "/etc/yum.repos.d/mongodb-org-3.4.repo" do
  source "mongodb-org-3.4.repo"
  mode "0644"
end

package 'mongodb-org' do
   action :install
  flush_cache [ :before ]
end

service 'mongod' do
  action :start
end

