module SimpleEncryption
  module Ciphers
    class ZenitPolar
      include SimpleEncryption::SubstitutionCipher

      CHARACTERS = %w(z e n i t p o l a r)
      FACTOR = 5

    end
  end
end
