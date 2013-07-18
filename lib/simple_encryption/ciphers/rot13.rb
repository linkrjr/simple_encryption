module SimpleEncryption
  module Ciphers
    class ROT13
      include SimpleEncryption::SubstitutionCipher

      CHARACTERS = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"].freeze
      FACTOR = 13

    end
  end
end
