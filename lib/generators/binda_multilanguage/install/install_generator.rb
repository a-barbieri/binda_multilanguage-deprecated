class BindaMultilanguage::InstallGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  include ::Rails::Generators::Migration

  def self.next_migration_number(dirname)
    ::ActiveRecord::Generators::Base.next_migration_number(dirname)
  end

  def disclaimer
    puts 
    puts "============================================================================="
    puts "                          BINDA MULTILANGUAGE SETUP"
    puts "============================================================================="
    puts 
  end

  def add_migration
    template = 'create_binda_multilanguage_tables'
    migration_dir = File.expand_path( Rails.root.join("db/migrate"))
    if self.class.migration_exists?(migration_dir, template)
      ::Kernel.warn "Migration already exists: #{template}"
    else
      migration_template "#{template}.rb", Rails.root.join("db/migrate/#{template}.rb")
    end
  end
   
  def run_migrations
    rake 'db:migrate'
  end

  def install_mobility
    exec 'rails generate mobility:install'
  end

end
