$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "babytime/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "babytime"
  s.version     = BabyTime::VERSION
  s.authors     = ["Francis Jiang"]
  s.email       = ["jhjguxin@gmail.com"]
  s.homepage    = "https://github.com/jhjguxin/babytime"
  s.summary     = "A wrapper for BabyTime API"
  s.description = "A wrapper for BabyTime API"

  s.files = Dir["{lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "activeresource"
  s.add_development_dependency "byebug"
  s.add_development_dependency "rspec"
end
