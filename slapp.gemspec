# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require './version'

Gem::Specification.new do |spec|
  spec.name          = "."
  spec.version       = .::VERSION
  spec.authors       = ["Nic Aitch"]
  spec.email         = ["nic@nicinabox.com"]
  spec.description   = %q{Parse Slackware PACKAGES.TXT with ease}
  spec.summary       = %q{Parse Slackware PACKAGES.TXT with ease}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
end