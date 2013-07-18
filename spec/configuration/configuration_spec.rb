require 'spec_helper'

describe SimpleEncryption::Configuration do

  after :all do
    SimpleEncryption::Configuration.configure do |config|
      config.encryption_algorithm = SimpleEncryption::Ciphers::ZenitPolar
    end
  end
  
  context "default settings" do
    subject { SimpleEncryption::Configuration.config }
  
    its(:encryption_algorithm) { should eql SimpleEncryption::Ciphers::ZenitPolar }
  end

  context "user settings" do
    
    class FakeAlgorithm; end
    
    before :each do
      SimpleEncryption::Configuration.configure do |config|
        config.encryption_algorithm = FakeAlgorithm
      end
    end
    
    subject { SimpleEncryption::Configuration.config }
    its(:encryption_algorithm) { should eql FakeAlgorithm }    
  end

end