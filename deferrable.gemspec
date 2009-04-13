Gem::Specification.new do |s|
  s.name = %q{deferrable}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Justin Balthrop"]
  s.date = %q{2009-04-13}
  s.description = %q{Simple mechanism for deferred execution of a block}
  s.email = %q{code@justinbalthrop}
  s.files = ["README.rdoc", "lib/deferrable.rb", "test/deferrable_test.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/ninjudd/deferrable}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Simple mechanism for deferred execution of a block}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
    else
    end
  else
  end
end
