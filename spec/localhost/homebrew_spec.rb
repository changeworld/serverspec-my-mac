require 'spec_helper'

homebrew_packages.each do |package|
  describe package(package) do
    it { should be_installed }
  end
end
