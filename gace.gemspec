# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gace/version'

Gem::Specification.new do |spec|
  spec.name          = 'gace'
  spec.version       = Gace::VERSION
  spec.authors       = ['Ryan Sonnek']
  spec.email         = ['ryan@codecrate.com']
  spec.summary       = %q(Rails integration for Google Analytics Content Experiments)
  spec.description   = %q(GACE is a simple way to integrate content experiments into your Rails application)
  spec.homepage      = 'https://github.com/thegarage/gace'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split('\x0')
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rails', '>= 4.1'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'shoulda-matchers'
  spec.add_development_dependency 'pry'
end
