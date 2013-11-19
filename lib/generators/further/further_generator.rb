require 'rails/generators/migration'

class FurtherGenerator < Rails::Generators::NamedBase
  include Rails::Generators::Migration

  source_root File.expand_path('../templates', __FILE__)

  def self.next_migration_number(path)
    Time.now.utc.strftime("%Y%m%d%H%M%S")
  end

  def create_model_file
    template "further_information.rb", "app/models/further_information.rb"
    migration_template "create_further_information.rb", "db/migrate/create_further_information.rb"
  end
end
