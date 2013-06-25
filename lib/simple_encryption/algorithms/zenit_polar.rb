module SimpleEncryption
  module Algorithms

    class ZenitPolar
      ZENIT = {"z" => "p", "e" => "o", "n" => "l", "i" => "a", "t" => "r"}
      POLAR = {"p" => "z", "o" => "e", "l" => "n", "a" => "i", "r" => "t"}
      PATTERN = ZENIT.merge(POLAR)
      
      def self.encrypt(message)
        message.chars.map do |char|
          PATTERN[char] || char
        end.join
      end
      
    end
    
  end
end
