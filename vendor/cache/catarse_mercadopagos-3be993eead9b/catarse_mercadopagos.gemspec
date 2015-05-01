# -*- encoding: utf-8 -*-
# stub: catarse_mercadopagos 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "catarse_mercadopagos"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Carlos Lopez"]
  s.date = "2015-05-01"
  s.description = "Mercadopagos integration with Catarse crowdfunding platform"
  s.email = ["carloshlopez@gmail.com"]
  s.files = [".gitignore", ".rvmrc", "Gemfile", "Gemfile.lock", "LICENSE", "MIT-LICENSE", "README.md", "Rakefile", "app/controllers/catarse_mercadopagos/payment/mercadopagos_controller.rb", "app/views/catarse_mercadopagos/payment/mercadopagos/review.html.slim", "catarse_mercadopagos.gemspec", "config/initializers/register.rb", "config/routes.rb", "lib/catarse_mercadopagos.rb", "lib/catarse_mercadopagos/engine.rb", "lib/catarse_mercadopagos/version.rb", "script/rails", "spec/controllers/catarse_mercadopagos/payment/mercadopagos_spec.rb", "spec/spec_helper.rb"]
  s.homepage = "http://github.com/carloshlopez/catarse_mercadopagos"
  s.rubygems_version = "2.4.2"
  s.summary = "mercadopagos integration with Catarse"
  s.test_files = ["spec/controllers/catarse_mercadopagos/payment/mercadopagos_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 0"])
      s.add_runtime_dependency(%q<mercadopago-sdk>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<fakeweb>, [">= 0"])
      s.add_development_dependency(%q<factory_girl_rails>, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<mercadopago-sdk>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<fakeweb>, [">= 0"])
      s.add_dependency(%q<factory_girl_rails>, [">= 0"])
      s.add_dependency(%q<database_cleaner>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<mercadopago-sdk>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<fakeweb>, [">= 0"])
    s.add_dependency(%q<factory_girl_rails>, [">= 0"])
    s.add_dependency(%q<database_cleaner>, [">= 0"])
  end
end
