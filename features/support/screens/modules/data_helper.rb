require 'yaml'

module DataHelper

  def data_yml_hash
    @data_yml = YAML.load_file 'config/data.yml'
  end

end