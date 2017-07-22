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

  s.add_development_dependency "pg",                       "~> 0.21"
  s.add_development_dependency "rspec-rails",              ">= 3.5",       "< 3.7"
end
