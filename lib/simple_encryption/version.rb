module SimpleEncryption

  def self.version
    Gem::Version.new("1.2.0")
  end

  module Version
    MAJOR, MINOR, PATCH, PRE = SimpleEncryption.version.segments
    STRING = SimpleEncryption.version.to_s
  end
end
