require 'spec_helper'

ruby_gems.each do |package|
  describe package(package) do
    it { should be_installed.by('gem') }
  end
end
