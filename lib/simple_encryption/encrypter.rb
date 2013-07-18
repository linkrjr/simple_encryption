module SimpleEncryption
  class Encrypter

    class NoMessageError < StandardError; end
    
    def self.encrypt(message)
      raise NoMessageError.new("A message must be provided.") unless message
      cipher.encrypt(message)
    end

    private

    def self.cipher
      SimpleEncryption::Configuration.config.encryption_algorithm
    end

  end
end