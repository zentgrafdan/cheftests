#
# Cookbook:: tomcatdz
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#remote_file '/var/www/customers/public_html/index.html' do
#  source 'http://somesite.com/index.html'
#  owner 'web_admin'
#  group 'web_admin'
#  mode '0755'
#  action :create
#end


#user_home = "/home/#{node['cookbook_name']['user']}"

#user node['cookbook_name']['user'] do
#  gid node['cookbook_name']['group']
##  shell '/bin/bash'
#  home user_home
#  system true
#  action :create
#end

group 'tomcat85' do
  action :create
  append true
end

user 'tomcat85' do
  system true
  action :create
  home '/opt/tomcat85'
  shell '/sbin/nologin'
  group 'tomcat85'
end
