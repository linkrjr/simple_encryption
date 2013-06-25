require 'spec_helper'

describe SimpleEncryption::Algorithms::ZenitPolar do
  it { expect(subject.class.encrypt("message")).to eql("mossigo") }
  it { expect(subject.class.encrypt("hello world")).to eql("honne wetnd") }
end