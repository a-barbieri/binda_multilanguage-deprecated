$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "binda_multilanguage/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "binda_multilanguage"
  s.version     = BindaMultilanguage::VERSION
  s.authors     = ["Alessandro Barbieri"]
  s.email       = ["info@alessandrobarbieri.net"]
  s.homepage    = "http://lacolonia.studio"
  s.summary     = "Binda Multilanguage is plugin for Binda CMS"
  s.description = "Use this plugin to enable multiple languages in your application"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails",                                ">= 5.0", "< 5.2"
  s.add_dependency "mobility",                             "~> 0.2"
  s.add_dependency "friendly_id-mobility",                 "~> 0.4"

  s.add_development_dependency "pg",                       "~> 0.21"
  s.add_development_dependency "yard",                     "~> 0.9"
  s.add_development_dependency "redcarpet",                "~> 3.4"
  s.add_development_dependency "github-markup",            "~> 1.6"
  s.add_development_dependency "pry-rails",                "~> 0.3.5"
  s.add_development_dependency "devise",                   ">= 4.1",      "< 4.4"
  s.add_development_dependency "rspec-rails",              ">= 3.5",       "< 3.7"
  s.add_development_dependency "capybara",                 "~> 2.14"
  s.add_development_dependency "selenium-webdriver",       "~> 3.5"
  s.add_development_dependency "factory_girl_rails",       "~> 4.8"
  s.add_development_dependency "database_cleaner",         "~> 1.6"

end
