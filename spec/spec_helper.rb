require 'serverspec'
require 'yaml'

set :backend, :exec

def load_configuration (key)
  config = YAML.load_file 'development.yml'
  config[0]['vars'][key].map do | package |
    package.kind_of?(Hash) ? package['name'] : package
  end
end
 
def homebrew_packages
  load_configuration 'homebrew_packages'
end
