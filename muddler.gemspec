# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'muddler/version'

Gem::Specification.new do |spec|
  spec.name          = "muddler"
  spec.version       = Muddler::VERSION
  spec.authors       = ["William Eisert"]
  spec.email         = ["weisert@eisertdev.com"]

  spec.summary       = %q{Ruby library for creating worlds in a MUD (multi user dungeon)}
  spec.description   = %q{MUDdler is an engine for running and serving Multi User Dungeons. World creators need only craft the items, spells, character types and other basic definitions of the world. MUDdler takes your .world file and brings the virtual world to life.}
  spec.homepage      = "https://github.com/eiwi1101/muddler"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-collection_matchers"
  spec.add_development_dependency "fuubar"
  spec.add_development_dependency "codeclimate-test-reporter"
end
