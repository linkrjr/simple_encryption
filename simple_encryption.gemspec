# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_encryption/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_encryption"
  spec.version       = SimpleEncryption::Version::STRING
  spec.authors       = ["Ronaldo Gomes"]
  spec.email         = ["ronaldo.junior@gmail.com"]
  spec.description   = %q{Simple Encryption is an implementation of some examples of Substitution cipher. It includes implementations for Zenit Polar, ROT13 and ROT47}
  spec.summary       = %q{Simple Encryption implements Substitution Ciphers like Zenit Polar, ROT13 and ROT47}
  spec.homepage      = "https://github.com/linkrjr/simple_encryption.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency 'ronn', '~> 0.7.3'  
  spec.add_development_dependency 'rspec', '~> 2.11'
  spec.add_development_dependency 'fuubar'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'pry'
  # spec.add_development_dependency 'pry-debugger'
  spec.add_development_dependency 'rake'
  
  spec.add_dependency 'activesupport', ['>= 3.0.0']
end
