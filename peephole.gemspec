$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "peephole/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "peephole"
  s.version     = Peephole::VERSION
  s.authors     = [""]
  s.email       = ["jack@remote.gd"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Peephole."
  s.description = "TODO: Description of Peephole."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1"

  s.add_development_dependency "sqlite3"
end
