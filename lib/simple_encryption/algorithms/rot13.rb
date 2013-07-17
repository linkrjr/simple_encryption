module SimpleEncryption
  module Algorithms
    class ROT13
      ALPHABET = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"].freeze
      FACTOR = 13
      
      def self.encrypt(message)
        perform(message)
      end

      def self.decrypt(message)
        perform(message)
      end

      private

      def self.perform(message)
        message.chars.map do |char|
          if ALPHABET.include?(char)
            index = ALPHABET.index(char)
            ALPHABET[index - FACTOR]
          else
            char
          end
        end.join
      end
      
    end
    
  end
end
