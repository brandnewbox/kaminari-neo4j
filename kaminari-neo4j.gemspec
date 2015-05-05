# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kaminari/neo4j/version'

Gem::Specification.new do |spec|
  spec.name          = 'kaminari-neo4j'
  spec.version       = Kaminari::Neo4j::VERSION
  spec.authors       = ['Dieter Pisarewski']
  spec.email         = ['dieter.pisarewski@gmail.com']
  spec.summary       = 'Neo4j support for kaminari'
  spec.description   = 'Adds Neo4j support for kaminari'
  spec.homepage      = 'https://github.com/megorei/kaminari-neo4j'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport'
  spec.add_dependency 'neo4j', '>= 4'
  spec.add_dependency 'kaminari'
end