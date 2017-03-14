# Cookbook:: progressiveCactus
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'git'
include_recipe 'build-essential'
include_recipe 'poise-python'

########

# install cmake, gcc 
package ['cmake', 'gcc'] do
  action :install
end

########

# Git client and clone repository into install dir

git node['progressiveCactus']['install_dir'] do
  repository node['progressiveCactus']['src_repo']
  revision node['progressiveCactus']['version']
  action 'checkout'
end

#########

# run command to install sickle

execute 'build progressiveCactus' do
  command  'make'
  cwd node['progressiveCactus']['install_dir']
  # not_if { ::File.exist?("#{node['progressiveCactus']['install_dir']}") }
end

########

# create link between installation directory and $PATH

link "#{node['progressiveCactus']['bin_path']}/progressiveCactus" do
  to "#{node['progressiveCactus']['install_dir']}/progressiveCactus"
end

########

magic_shell_environment 'PROGRESSIVECACTUS_VERSION' do
  value node['progressiveCactus']['version']
end
