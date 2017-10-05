#
# Cookbook:: initialtest
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#
file '/opt/dantest.txt' do
  content "The quick brown fox jumps over the lazy dogsdf" + "\n" + "Second Line" + "\n"
end
