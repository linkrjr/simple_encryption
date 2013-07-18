module SimpleEncryption
  module Ciphers
    class ROT47
      include SimpleEncryption::SubstitutionCipher
      
      CHARACTERS = (33..126).map(&:chr)
      FACTOR = 47

      def self.encrypt(message)
        perform(message)
      end

      def self.decrypt(message)
        perform(message)
      end

    end
  end
end