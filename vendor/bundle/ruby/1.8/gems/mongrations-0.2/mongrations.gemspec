# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mongrations/version"

Gem::Specification.new do |s|
  s.name        = "mongrations"
  s.version     = Mongrations::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Chris Heald", "terrbear"]
  s.email       = ["cheald@gmail.com"]
  s.homepage    = "https://github.com/cheald/mongrations"
  s.summary     = %q{Rails-style migrations for MongoMapper}
  s.description = %q{Rails-style migrations for MongoMapper}

  s.rubyforge_project = "mongrations"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "shoulda"
  s.add_development_dependency "matchy"

  s.add_dependency "mongo_mapper"
end
