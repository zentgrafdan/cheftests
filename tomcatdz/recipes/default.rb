#
# Cookbook:: tomcatdz
# Recipe:: default
#
# Copyright:: 2017, Dan Zentgraf, All Rights Reserved.




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

directory '/opt/tomcat85/' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

remote_file '/opt/tomcat85/apache-tomcat-8.5.23.tar.gz' do
  source 'http://mirror.cc.columbia.edu/pub/software/apache/tomcat/tomcat-8/v8.5.23/bin/apache-tomcat-8.5.23.tar.gz'
  owner 'tomcat85'
  group 'tomcat85'
  mode '0444'
  action :create
end

tar_extract '/opt/tomcat85/apache-tomcat-8.5.23.tar.gz' do
  action :extract_local
  target_dir '/opt/tomcat85'
  creates '/opt/tomcat85/apache-tomcat-8.5.23'
end


