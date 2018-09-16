# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'bemer/bootstrap/version'

Gem::Specification.new do |spec| # rubocop:disable Metrics/BlockLength
  spec.name             = 'bemer-bootstrap'
  spec.version          = Bemer::Bootstrap::VERSION
  spec.authors          = ['Alexander Grigorev']
  spec.email            = ['vill@rubyinventory.org']

  spec.summary          = 'Bootstrap as Bemer components.'
  spec.description      = 'Bootstrap as Bemer components.'
  spec.license          = 'MIT'
  spec.require_paths    = ['lib']
  spec.files            = Dir['lib/**/*.rb', 'app/**/*', 'LICENSE.txt']
  spec.test_files       = Dir['spec/**/*']
  spec.extra_rdoc_files = Dir['README.md']

  spec.metadata = {
    'bug_tracker_uri'   => 'https://github.com/vill/bemer-bootstrap/issues',
    'homepage_uri'      => 'https://github.com/vill/bemer-bootstrap',
    'source_code_uri'   => 'https://github.com/vill/bemer-bootstrap'
  }

  spec.required_ruby_version     = '>= 2.2.0'
  spec.required_rubygems_version = '>= 2.2.0'

  spec.add_development_dependency 'bundler',       '~> 1.15'
  spec.add_development_dependency 'bundler-audit', '~> 0.6.0'
  spec.add_development_dependency 'fasterer',      '~> 0.4.1'
  spec.add_development_dependency 'overcommit',    '~> 0.46.0'
  spec.add_development_dependency 'rake',          '~> 12.3.0'
  spec.add_development_dependency 'rubocop',       '~> 0.59.1'

  spec.add_runtime_dependency 'bemer',      '~> 0.1.0'
  spec.add_runtime_dependency 'slim-rails', '~> 3.1'
end
