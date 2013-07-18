require 'spec_helper'

describe SimpleEncryption::Encrypter do

  context "when using the default encryption algorithm 'Zenit Polar'" do
    it {expect(subject.class.encrypt("hello")).to eql "honne"}
    it {expect(subject.class.encrypt("Message")).to eql "mossigo"}
    it { expect(subject.class.encrypt("Message with space")).to eql("mossigo warh szico") }
  end

  context "when using the ROT13 cipher" do
    before do
      SimpleEncryption::Configuration.configure do |config|
        config.encryption_algorithm = SimpleEncryption::Ciphers::ROT13
      end
    end

    it { expect(subject.class.encrypt("hello")).to eql("uryyb") }
    it { expect(subject.class.encrypt("Message")).to eql("zrffntr") }
    it { expect(subject.class.encrypt("Message with space")).to eql("zrffntr jvgu fcnpr") }
  end


  context "when using the ROT47 cipher" do
    before do
      SimpleEncryption::Configuration.configure do |config|
        config.encryption_algorithm = SimpleEncryption::Ciphers::ROT47
      end
    end

    it { expect(subject.class.encrypt("hello")).to eql("96==@") }
    it { expect(subject.class.encrypt("Message")).to eql("|6DD286") }
    it { expect(subject.class.encrypt("Message with space")).to eql("|6DD286 H:E9 DA246") }
  end
end