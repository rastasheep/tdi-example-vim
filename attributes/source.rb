#
# Cookbook Name:: tdi-example-vim
# Attributes:: source
#
# Licensed under the MIT License

default['vim']['extra_packages'] = []
default['vim']['install_method'] = 'package'

default['vim']['source']['version']       = '7.4'
default['vim']['source']['checksum']      = 'd0f5a6d2c439f02d97fa21bd9121f4c5abb1f6cd8b5a79d3ca82867495734ade'
default['vim']['source']['prefix']        = "/usr/local"
default['vim']['source']['configuration'] = "--without-x --enable-pythoninterp --enable-rubyinterp --enable-cscope  --with-features=huge --prefix=#{default['vim']['source']['prefix']}"

if platform_family? "rhel"
  default['vim']['source']['dependencies'] = %w{ python-devel ncurses ncurses-devel ruby ruby-devel perl-devel ctags gcc make }
else
  default['vim']['source']['dependencies'] = %w{ python-dev libncurses5-dev ruby ruby-dev libperl-dev exuberant-ctags gcc make }
end
