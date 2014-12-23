#
# Cookbook Name:: tdi-example-vim
# Recipe:: package
#
# Licensed under the MIT License

vim_base_pkgs = value_for_platform(
  ["ubuntu", "debian", "arch"] => {"default" => ["vim"]},
  ["redhat", "centos", "fedora", "scientific"] => {"default" => ["vim-minimal","vim-enhanced"]},
  "default" => ["vim"]
)

vim_base_pkgs.each do |vim_base_pkg|
  package vim_base_pkg
end

node['vim']['extra_packages'].each do |vimpkg|
  package vimpkg
end
