# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'bemer/bootstrap/version'

Gem::Specification.new do |spec|
  spec.name          = 'bemer-bootstrap'
  spec.version       = Bemer::Bootstrap::VERSION
  spec.authors       = ['Alexander Grigorev']
  spec.email         = ['vill@rubyinventory.org']

  spec.summary       = 'Bootstrap as Bemer components.'
  spec.description   = 'Bootstrap as Bemer components.'
  spec.homepage      = 'https://github.com/vill/bemer-bootstrap'
  spec.license       = 'MIT'
  spec.require_paths = ['lib']
  spec.test_files    = `git ls-files -z -- spec/*`.split("\x0")
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^spec/|^Gemfile.lock$})
  end

  spec.required_ruby_version     = '>= 2.2.0'
  spec.required_rubygems_version = '>= 2.2.0'

  spec.add_development_dependency 'bundler',       '~> 1.15'
  spec.add_development_dependency 'bundler-audit', '~> 0.6.0'
  spec.add_development_dependency 'fasterer',      '~> 0.4.0'
  spec.add_development_dependency 'overcommit',    '~> 0.43.0'
  spec.add_development_dependency 'rake',          '~> 12.3.0'
  spec.add_development_dependency 'rubocop',       '~> 0.52.1'

  spec.add_runtime_dependency 'bemer'
  spec.add_runtime_dependency 'slim-rails', '~> 3.1'
end
