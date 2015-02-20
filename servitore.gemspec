# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'servitore/version'

Gem::Specification.new do |spec|
  spec.name          = "servitore"
  spec.version       = Servitore::VERSION
  spec.authors       = ["Jason Kriss"]
  spec.email         = ["jasonkriss@gmail.com"]
  spec.summary       = "Bare-boned service objects."
  spec.homepage      = "https://github.com/jasonkriss/servitore"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 4.2.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
