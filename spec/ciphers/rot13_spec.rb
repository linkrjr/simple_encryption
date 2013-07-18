require 'spec_helper'

describe SimpleEncryption::Ciphers::ROT13 do 

  describe ".encrypt" do
    it { expect(subject.class.encrypt("hello")).to eql("uryyb") }
    it { expect(subject.class.encrypt("Hello")).to eql("uryyb") }

    it { expect(subject.class.encrypt("hi")).to eql("uv") }
    it { expect(subject.class.encrypt("this is a long testing message")).to eql("guvf vf n ybat grfgvat zrffntr") }
  end
    
  describe ".decrypt" do
    it { expect(subject.class.decrypt("uryyb")).to eql("hello") }
    it { expect(subject.class.decrypt("UrYyb")).to eql("hello") }
  end

end