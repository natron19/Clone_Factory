# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clone_factory/version'

Gem::Specification.new do |spec|
  spec.name          = "clone_factory"
  spec.version       = CloneFactory::VERSION
  spec.authors       = ["Nathan Rohm"]
  spec.email         = ["nathan19@hotmail.com"]
  spec.description   = %q{Creates unique users with names, addresses, and phone numbers}
  spec.summary       = %q{Create fake users for your apps}
  spec.homepage      = "http://rubygems.org/gems/Clone_Factory"
  spec.license       = "MIT"
  spec.date          = "2014-12-01"
 
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
