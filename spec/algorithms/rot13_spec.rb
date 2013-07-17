require 'spec_helper'

describe SimpleEncryption::Algorithms::ROT13 do 

  it { expect(subject.class.encrypt("hello")).to eql("uryyb") }
  it { expect(subject.class.encrypt("hi")).to eql("uv") }
  it { expect(subject.class.encrypt("this is a long testing message")).to eql("guvf vf n ybat grfgvat zrffntr") }
  

  it { expect(subject.class.decrypt("uryyb")).to eql("hello") }

end