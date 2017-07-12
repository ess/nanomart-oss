# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "nanomart/version"

Gem::Specification.new do |spec|
  spec.name          = "nanomart"
  spec.version       = Nanomart::VERSION
  spec.authors       = ["Engine Yard"]
  spec.email         = ["support@engineyard.com"]

  spec.summary       = %q{A very tiny market that sells stuff}
  spec.homepage      = "https://github.com/engineyard/nanomart-oss"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'highline', '~> 1.7'
  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
