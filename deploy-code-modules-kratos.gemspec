# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'deploy/code/modules/kratos/version'

Gem::Specification.new do |spec|
  spec.name          = "deploy-code-modules-kratos"
  spec.version       = Deploy::Code::Modules::Kratos::VERSION
  spec.authors       = ["Alexey Fedorov"]
  spec.email         = ["waterlink000@gmail.com"]
  spec.summary       = %q{deploy-code module for kratos integration.}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/waterlink/deploy-code-modules-kratos"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "deploy-code", "~> 0.1.0"
end
