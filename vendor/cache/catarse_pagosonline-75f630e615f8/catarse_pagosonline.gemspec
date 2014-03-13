# -*- encoding: utf-8 -*-
# stub: catarse_pagosonline 0.1.11 ruby lib

Gem::Specification.new do |s|
  s.name = "catarse_pagosonline"
  s.version = "0.1.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Gustavo Guichard"]
  s.date = "2014-03-13"
  s.description = "Pagosonline integration with Catarse crowdfunding platform"
  s.email = ["gustavoguichard@gmail.com"]
  s.files = [".gitignore", ".rvmrc", "Gemfile", "Gemfile.lock", "MIT-LICENSE", "README.md", "Rakefile", "app/controllers/catarse_pagosonline/payment/pagosonline_controller.rb", "app/views/catarse_pagosonline/payment/pagosonline/review.html.slim", "catarse_pagosonline.gemspec", "config/initializers/register.rb", "config/routes.rb", "lib/catarse_pagosonline.rb", "lib/catarse_pagosonline/engine.rb", "lib/catarse_pagosonline/version.rb", "script/rails", "spec/controllers/catarse_pagosonline/payment/pagosonline_spec.rb", "spec/spec_helper.rb"]
  s.homepage = "http://github.com/gustavoguichard/catarse_pagosonline"
  s.rubygems_version = "2.2.1"
  s.summary = "Pagosonline integration with Catarse"
  s.test_files = ["spec/controllers/catarse_pagosonline/payment/pagosonline_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 0"])
      s.add_runtime_dependency(%q<pagosonline>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<fakeweb>, [">= 0"])
      s.add_development_dependency(%q<factory_girl_rails>, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<pagosonline>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<fakeweb>, [">= 0"])
      s.add_dependency(%q<factory_girl_rails>, [">= 0"])
      s.add_dependency(%q<database_cleaner>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<pagosonline>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<fakeweb>, [">= 0"])
    s.add_dependency(%q<factory_girl_rails>, [">= 0"])
    s.add_dependency(%q<database_cleaner>, [">= 0"])
  end
end
