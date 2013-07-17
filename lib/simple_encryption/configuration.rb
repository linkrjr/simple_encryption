require 'singleton'
require 'active_support/configurable'

module SimpleEncryption
    
  class Configuration
    include ActiveSupport::Configurable
  
    config_accessor :encryption_algorithm do 
      SimpleEncryption::Algorithms::ZenitPolar
    end
    
  end  

end