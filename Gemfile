# frozen_string_literal: true

source 'https://rubygems.org'

# Specify your gem's dependencies in bemer-bootstrap.gemspec
gemspec

# Nokogiri parses and searches XML/HTML using native libraries (either C or Java, depending on your Ruby), which means it's fast and standards-compliant.
gem 'nokogiri', '~> 1.10.7'

# Rack provides a minimal, modular and adaptable interface for developing web applications in Ruby.
# Fix CVE-2019-16782 https://github.com/rack/rack/security/advisories/GHSA-hrqr-hxpp-chr3
gem 'rack', '~> 2.1.4'

# Loofah is a general library for manipulating and transforming HTML/XML documents and fragments, built on top of Nokogiri.
# Fix CVE-2019-15587 https://github.com/flavorjones/loofah/issues/171
gem 'loofah', '~> 2.4.0'
