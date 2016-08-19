# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pp_sort_hash/version'

Gem::Specification.new do |spec|
  spec.name          = 'pp_sort_hash'
  spec.version       = PpSortHash::VERSION
  spec.authors       = ['Genki Sugawara']
  spec.email         = ['sugawara@cookpad.com']

  spec.summary       = %q{Pretty print a sorted hash by key.}
  spec.description   = %q{Pretty print a sorted hash by key.}
  spec.homepage      = 'https://github.com/winebarrel/pp_sort_hash'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
