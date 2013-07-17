require "active_support/dependencies/autoload"

module SimpleEncryption
  extend ActiveSupport::Autoload

  autoload :Version
  autoload :Algorithms
  autoload :Configuration
end
