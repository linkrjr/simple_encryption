# SimpleEncryption

Simple Encryption is an implementation of some examples of Substitution cipher.
It includes implementations for [Zenit Polar](http://pt.wikipedia.org/wiki/Zenit_Polar), [ROT13](https://en.wikipedia.org/wiki/ROT13) and ROT47

An implementation for Pigpen cipher and some others is coming soon.

[![Gem Version](https://badge.fury.io/rb/simple_encryption.png)](http://badge.fury.io/rb/simple_encryption)
[![Code Climate](https://codeclimate.com/github/linkrjr/simple_encryption.png)](https://codeclimate.com/github/linkrjr/simple_encryption)
[![Codeship Status for linkrjr/simple_encryption](https://www.codeship.io/projects/9fc47770-2749-0132-7b27-1a72e97eb705/status)](https://www.codeship.io/projects/37704)
[![Travis CI](https://api.travis-ci.org/linkrjr/simple_encryption.png)](https://travis-ci.org/linkrjr/simple_encryption)
[![Dependency Status](https://gemnasium.com/linkrjr/simple_encryption.png)](https://gemnasium.com/linkrjr/simple_encryption)

## Installation

Add this line to your application's Gemfile:

    gem 'simple_encryption'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_encryption

## Usage

Simple Encryption is very simple to use, just install the gem as described above and try this in your code.

```ruby 
SimpleEncryption::Encrypter.encrypt("message to encrypt")
```

By default Simple Encryption uses the [Zenit Polar](http://pt.wikipedia.org/wiki/Zenit_Polar) cipher, you can change it to use one of the other included ciphers ([ROT13](https://en.wikipedia.org/wiki/ROT13), ROT47).

Simply create add an initialization file to your rails project and add the following lines to it

```ruby 
SimpleEncryption::Configuration.configure do |config|
  config.encryption_algorithm = SimpleEncryption::Ciphers::ROT13
end
```
or

```ruby
SimpleEncryption::Configuration.configure do |config|
  config.encryption_algorithm = SimpleEncryption::Ciphers::ROT47
end
```

And use it the same way we did on the first example

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
