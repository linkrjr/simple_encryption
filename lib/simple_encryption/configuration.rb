require 'active_support/configurable'

module SimpleEncryption
    
  class Configuration
    include ActiveSupport::Configurable
  
    config_accessor :encryption_algorithm do 
      SimpleEncryption::Ciphers::ZenitPolar
    end
    
  end  

end