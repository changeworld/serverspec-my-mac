require 'spec_helper'

describe command('which rake') do
  its(:stdout) { should match(/rake/) }
end

describe command('which bundler') do
  its(:stdout) { should match(/bundler/) }
end

describe command('which serverspec-init') do
  its(:stdout) { should match(/serverspec-init/) }
end
