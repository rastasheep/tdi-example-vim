#
# Cookbook Name:: tdi-example-vim
# Recipe:: default
#
# Licensed under the MIT License

begin
  include_recipe "tdi-example-vim::#{node['vim']['install_method']}"
rescue Chef::Exceptions::RecipeNotFound
  Chef::Log.warn "A #{node['vim']['install_method']} recipe does not exist for the platform_family: #{node['platform_family']}"
end
