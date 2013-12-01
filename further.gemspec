$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "further/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "further"
  s.version     = Further::VERSION
  s.authors     = ["Abdulaziz AlShetwi"]
  s.email       = ["ecleeld@gmail.com"]
  s.homepage    = "https://github.com/ecleel/further"
  s.summary     = "Add more data in you model without adding a column in your table."
  s.description = "This gem provides a simple and extremely flexible way to add extra data into your models without adding new column for that."
  s.license     = 'MIT'

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"

  s.add_development_dependency "sqlite3"
end
