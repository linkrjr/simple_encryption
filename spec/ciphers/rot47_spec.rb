require 'spec_helper'

describe SimpleEncryption::Ciphers::ROT47 do 

  describe ".encrypt" do
    it { expect(subject.class.encrypt("hello")).to eql("96==@") }
    it { expect(subject.class.encrypt("hi")).to eql("9:") }
    it { expect(subject.class.encrypt("this is a message")).to eql("E9:D :D 2 >6DD286") }
  end

  describe ".decrypt" do
    it { expect(subject.class.decrypt("96==@")).to eql("hello") }
  end
  
end