require 'chefspec'

describe 'tdi-example-vim::default' do
  let :chef_run do
    ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '12.04')
  end

  it 'should have default install_method "package"' do
    chef_run.converge(described_recipe)
    expect(chef_run.node['vim']['install_method']).to eq('package')
  end

  it 'should include the vim::package recipe when install_method = "package"' do
    chef_run.converge(described_recipe)
    expect(chef_run).to include_recipe('tdi-example-vim::package')
  end

  it 'should include the vim::source recipe when install_method = "source"' do
    chef_run.node.set['vim']['install_method'] = 'source'
    chef_run.converge(described_recipe)
    expect(chef_run).to include_recipe('tdi-example-vim::source')
  end
end
