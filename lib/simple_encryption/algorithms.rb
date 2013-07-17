module SimpleEncryption
  module Algorithms
  end
end

Dir[File.dirname(__FILE__) + "/algorithms/*.rb"].each { |file| require file }