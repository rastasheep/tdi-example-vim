#
# Cookbook Name:: tdi-example-vim
# Attributes:: source
#
# Licensed under the MIT License

default['vim']['extra_packages'] = []
default['vim']['install_method'] = 'package'

default['vim']['source']['version']       = '7.4'
default['vim']['source']['checksum']      = '607e135c559be642f210094ad023dc65'
default['vim']['source']['prefix']        = "/usr/local"
default['vim']['source']['configuration'] = "--without-x --enable-pythoninterp --enable-rubyinterp --enable-cscope  --with-features=huge --prefix=#{default['vim']['source']['prefix']}"

if platform_family? "rhel"
  default['vim']['source']['dependencies'] = %w{ python-devel ncurses ncurses-devel ruby ruby-devel perl-devel ctags gcc make }
else
  default['vim']['source']['dependencies'] = %w{ python-dev libncurses5-dev ruby ruby-dev libperl-dev ctags gcc make }
end
