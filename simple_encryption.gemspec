# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_encryption/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_encryption"
  spec.version       = SimpleEncryption::VERSION
  spec.authors       = ["Ronaldo Gomes"]
  spec.email         = ["ronaldo.junior@gmail.com"]
  spec.description   = %q{Simple Encryption applies only the simplest encryption algorithms out there}
  spec.summary       = %q{Simple Encryption Systems}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec"
end
