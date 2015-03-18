require 'spec_helper'

if os[:family] == 'ubuntu'
  describe package('vim') do
    it { should be_installed }
  end
end

if os[:family] == 'redhat'
  describe package('vim-minimal') do
    it { should be_installed }
  end

  describe package('vim-enhanced') do
    it { should be_installed }
  end
end

describe command('vim --version') do
  its(:stdout) { should match /VIM - Vi IMproved 7.4/ }
end