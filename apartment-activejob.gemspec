# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'apartment/active_job/version'

Gem::Specification.new do |spec|
  spec.name          = "apartment-activejob-que"
  spec.version       = Apartment::ActiveJob::VERSION
  spec.authors       = ["Zulfiqar Ali", "James Carbine"]
  spec.email         = ["zulfiqar@influitive.com", "jamescarbine@gmail.com"]
  spec.summary       = %q{ActiveJob support for Apartment with Que support}
  spec.description   = %q{Enable ActiveJob to work with Apartment multi-tenancy with Que support}
  spec.homepage      = "https://github.com/bfcoder/apartment-activejob"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ros-apartment"
  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler", "> 1.7"
  spec.add_development_dependency "rake", "> 10.0"
end
