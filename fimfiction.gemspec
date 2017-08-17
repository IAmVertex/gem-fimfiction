# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "fimfiction"
  s.version = "0.0.1"
  s.summary = "Simple Fimfiction.net API wrapper"
  s.description = "A simple Fimfiction.net API abstraction wrapper and REST client for Ruby."
  s.authors = ["Vertex"]
  s.date = "2017-08-16"
  s.email = ["vertexchangeling@gmail.com"]
  s.homepage = "https://github.com/IAmVertex/gem-fimfiction"

  s.require_paths = ["lib"]
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.files = Dir.glob("{lib}/**/*") + %w(LICENSE README.md ROADMAP.md CHANGELOG.md)

  s.add_dependency(%q<rest-client>.freeze, [">= 0"])
end