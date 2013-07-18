module SimpleEncryption
  class Encrypter
    
    def self.encrypt(message)
      cipher.encrypt(message)
    end

    private

    def self.cipher
      SimpleEncryption::Configuration.config.encryption_algorithm
    end

  end
end