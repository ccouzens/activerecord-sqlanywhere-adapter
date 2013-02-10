Gem::Specification.new do |s|
  s.name = %q{activerecord-sqlanywhere-adapter}
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = [%q{Eric Farar}]
  s.email = %q{ccouzens@gmail.com}
  s.files = [
    "LICENSE",
    "README.md",
    "lib/active_record/connection_adapters/sqlanywhere_adapter.rb",
    "lib/arel/visitors/sqlanywhere.rb",
  ]
  s.homepage = %q{http://sqlanywhere.rubyforge.org}
  s.licenses = [%q{Apache License Version 2.0}]
  s.require_paths = [%q{lib}]
  s.rubygems_version = %q{>= 1.8.8}
  s.summary = %q{ActiveRecord driver for SQL Anywhere}

  s.platform = 'java'
  s.add_dependency 'activerecord-jdbc-adapter', '>= 1.2.6'
  s.add_dependency 'activerecord', '>= 3.2.11'
end

