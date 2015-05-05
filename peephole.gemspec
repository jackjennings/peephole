$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "peephole/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "peephole"
  s.version     = Peephole::VERSION
  s.authors     = ["Jack Jennings"]
  s.email       = ["jack@remote.gd"]
  s.homepage    = "https://github.com/jackjennings/peephole"
  s.summary     = "Simple Rails route constraints for multi-tenancy"
  s.description = "Simple Rails route constraints for multi-tenancy"
  s.license     = "MIT"

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1"

  s.add_development_dependency "sqlite3"
end
