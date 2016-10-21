# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'buyon_api/version'

Gem::Specification.new do |spec|
  spec.name          = "buyon_api"
  spec.version       = BuyonApi::VERSION
  spec.authors       = ["Sergey Chechaev"]
  spec.email         = ["kompotdrinker@gmail.com"]

  spec.summary       = %q{ruby gem for buyou api}
  spec.description   = %q{ruby gem for buyou api}
  spec.homepage      = "https://github.com/sergey-chechaev/buyon_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '~> 2.3'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency 'pry-rails'

  spec.add_runtime_dependency 'faraday', '~> 0.9.2'
end
