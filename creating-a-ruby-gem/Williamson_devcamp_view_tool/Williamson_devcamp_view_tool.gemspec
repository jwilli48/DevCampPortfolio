# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Williamson_devcamp_view_tool/version'
require 'Williamson_devcamp_view_tool/renderer'

Gem::Specification.new do |spec|
  spec.name          = "Williamson_devcamp_view_tool"
  spec.version       = WilliamsonDevcampViewTool::VERSION
  spec.authors       = ["Josh Williamson"]
  spec.email         = ["jlwilliamson95@gmail.com"]

  spec.summary       = %q{Copyright notice}
  spec.description   = %q{Adds a dynamic copyright notice to each page}
  spec.homepage      = "github.com/jwilli48/devcampt_view_tool"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
