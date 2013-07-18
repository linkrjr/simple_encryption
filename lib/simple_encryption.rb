require "active_support/dependencies/autoload"
require 'active_support/concern'

module SimpleEncryption
  extend ActiveSupport::Autoload

  autoload :Version
  autoload :Configuration
  autoload :SubstitutionCipher
  autoload :Ciphers
  autoload :Encrypter
end
