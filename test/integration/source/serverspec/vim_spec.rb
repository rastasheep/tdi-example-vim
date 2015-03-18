require 'spec_helper'

describe command('vim --version') do
  its(:stdout) { should match /VIM - Vi IMproved 7.4/ }
  its(:stdout) { should match /Compiled by vagrant@source-/ }
end