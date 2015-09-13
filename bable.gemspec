# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bable/version"

Gem::Specification.new do |s|
  s.name     = "bable"
  s.version  = Bable::VERSION
  s.authors  = ["Daniel Madrid"]
  s.email    = ["hello@dmadridreina.com"]
  s.summary  = "Text readability indexes calculator."
  s.homepage = "https://github.com/danimashu/bable"
  s.license  = "MIT"

  s.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^spec/}) }
  s.bindir = "exe"
  s.executables = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "activesupport", "~> 4.2.4"

  s.add_development_dependency "bundler", "~> 1.10"
  s.add_development_dependency "pry",     "~> 0.10"
  s.add_development_dependency "rake",    "~> 10.0"
  s.add_development_dependency "rspec",   "~> 3.3"
  s.add_development_dependency "rubocop", "~> 0.34"
  s.add_development_dependency "yard",    "~> 0.8"
end
