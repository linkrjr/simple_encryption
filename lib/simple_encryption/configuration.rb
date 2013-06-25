require 'active_support/configurable'

module SimpleEncryption
  
  def self.configure(&block)
    yield config
  end
  
  def self.config
    @config ||= SimpleEncryption::Configuration.new
  end
  
  class Configuration
    include ActiveSupport::Configurable
    config_accessor :encryption_algorithm
  
    configure do |config|
      config.encryption_algorithm = SimpleEncryption::Algorithms::ZenitPolar
      
    end
  
  end  

end