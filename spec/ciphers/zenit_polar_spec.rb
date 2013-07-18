require 'spec_helper'

describe SimpleEncryption::Ciphers::ZenitPolar do
  describe ".encrypt" do
    it { expect(subject.class.encrypt("message")).to eql("mossigo") }
    it { expect(subject.class.encrypt("Message")).to eql("mossigo") }
    it { expect(subject.class.encrypt("hello world")).to eql("honne wetnd") }
  end
  
  describe ".decrypt" do
    it { expect(subject.class.encrypt("mossigo")).to eql("message") }
    it { expect(subject.class.encrypt("Mossigo")).to eql("message") }
    it { expect(subject.class.encrypt("honne wetnd")).to eql("hello world") }
  end
end