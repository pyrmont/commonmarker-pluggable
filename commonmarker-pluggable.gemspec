# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'commonmarker-pluggable/version'

Gem::Specification.new do |spec|
  spec.name          = "commonmarker-pluggable"
  spec.version       = CommonMarkerPluggable::VERSION
  spec.authors       = ["Michael Camilleri"]
  spec.email         = ["mike@inqk.net"]

  spec.summary       = %q{A plugin that extends commonmarker to support plugins}
  spec.description   = %q{The commonmarker-pluggable plugin provides a simple way to extend the CommonMark parser using plugins.}
  spec.homepage      = "https://github.com/pyrmont/commonmarker-pluggable/"
  spec.license       = "Unlicense"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 2.4.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.add_dependency "commonmarker", "~> 0.20"
end
