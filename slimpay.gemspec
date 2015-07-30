# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slimpay/version'

Gem::Specification.new do |spec|
  spec.name          = 'slimpay'
  spec.version       = Slimpay::VERSION
  spec.authors       = ['Gregory Durelle']
  spec.email         = ['gregory.durelle@gmail.com']

  spec.summary       = %(Slimpay HAPI for Ruby.)
  spec.description   = %(Ruby library for Slimpay's Hypermedia API.)
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    fail 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'oauth2', '~> 0.9.0'
  spec.add_dependency 'httparty', '~> 0.13.5'
  spec.add_dependency 'activesupport', '~> 4.0.0'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
