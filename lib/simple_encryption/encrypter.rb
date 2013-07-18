module SimpleEncryption
  class Encrypter

    class NoMessageError < StandardError; end
    
    def self.encrypt(message)
      raise_error_when_message_is_nil(message)
      cipher.encrypt(message)
    end

    def self.decrypt(message)
      raise_error_when_message_is_nil(message)
      cipher.decrypt(message)
    end

    private

    def self.raise_error_when_message_is_nil(message)
      raise NoMessageError.new("A message must be provided.") unless message
    end

    def self.cipher
      SimpleEncryption::Configuration.config.encryption_algorithm
    end

  end
end