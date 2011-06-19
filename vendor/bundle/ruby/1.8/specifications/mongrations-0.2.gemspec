# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mongrations}
  s.version = "0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chris Heald", "terrbear"]
  s.date = %q{2011-01-31}
  s.description = %q{Rails-style migrations for MongoMapper}
  s.email = ["cheald@gmail.com"]
  s.files = [".gitignore", "Gemfile", "MIT-LICENSE", "README.markdown", "Rakefile", "generators/mongration/mongration_generator.rb", "generators/mongration/templates/mongration.rb", "lib/mongrations.rb", "lib/mongrations/exceptions.rb", "lib/mongrations/migration_proxy.rb", "lib/mongrations/migrator.rb", "lib/mongrations/mongration.rb", "lib/mongrations/schema_migration.rb", "lib/mongrations/tasks.rb", "lib/mongrations/version.rb", "mongrations.gemspec", "test/models/widget.rb", "test/mongrations/20101125020919_fix_groupable_keys.rb", "test/mongrations_test.rb", "test/test_helper.rb"]
  s.homepage = %q{https://github.com/cheald/mongrations}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{mongrations}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Rails-style migrations for MongoMapper}
  s.test_files = ["test/models/widget.rb", "test/mongrations/20101125020919_fix_groupable_keys.rb", "test/mongrations_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<matchy>, [">= 0"])
      s.add_runtime_dependency(%q<mongo_mapper>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<matchy>, [">= 0"])
      s.add_dependency(%q<mongo_mapper>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<matchy>, [">= 0"])
    s.add_dependency(%q<mongo_mapper>, [">= 0"])
  end
end
