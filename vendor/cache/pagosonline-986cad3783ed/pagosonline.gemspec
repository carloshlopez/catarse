# -*- encoding: utf-8 -*-
# stub: pagosonline 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "pagosonline"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Sebastian Gamboa, Carlos Lopez"]
  s.date = "2014-03-13"
  s.description = "Pagosonline"
  s.email = ["me@sagmor.com,carloshlopez@gmail.com"]
  s.files = [".gitignore", "Gemfile", "Rakefile", "lib/pagosonline.rb", "lib/pagosonline/client.rb", "lib/pagosonline/payment.rb", "lib/pagosonline/response.rb", "lib/pagosonline/version.rb", "pagosonline.gemspec"]
  s.homepage = ""
  s.rubyforge_project = "pagosonline"
  s.rubygems_version = "2.2.1"
  s.summary = "Pagosonline"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<hashie>, [">= 0"])
    else
      s.add_dependency(%q<hashie>, [">= 0"])
    end
  else
    s.add_dependency(%q<hashie>, [">= 0"])
  end
end
