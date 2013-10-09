require 'rubygems'
require 'simple_encryption'
require 'rspec'
require "codeclimate-test-reporter"

CodeClimate::TestReporter.start

Dir[File.expand_path('../support/**/*.rb', __FILE__)].each {|f| require f}

RSpec.configure do |config|  

  config.after :each do  
    SimpleEncryption::Configuration.configure do |config|
      config.encryption_algorithm = SimpleEncryption::Ciphers::ZenitPolar
    end
  end

end
