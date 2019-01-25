# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-commonmark-pluggable/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-commonmark-pluggable"
  spec.version       = Jekyll::CommonMark::Pluggable::VERSION
  spec.authors       = ["Michael Camilleri"]
  spec.email         = ["mike@inqk.net"]

  spec.summary       = %q{A plugin that extends jekyll-commonmark to support Jekyll plugins}
  spec.description   = %q{The jekyll-commonmark-pluggable plugin provides a simple way to extend the CommonMark parser using Jekyll plugins.}
  spec.homepage      = "https://github.com/pyrmont/jekyll-commonmark-pluggable/"
  spec.license       = "Unlicense"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '>= 2.4.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.add_runtime_dependency "jekyll-commonmark", "~> 1.2.0"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
