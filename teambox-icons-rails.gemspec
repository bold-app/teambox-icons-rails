# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'teambox/icons/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "teambox-icons-rails"
  spec.version       = Teambox::Icons::Rails::VERSION
  spec.authors       = ["Jens Kraemer"]
  spec.email         = ["jk@jkraemer.net"]

  spec.summary       = %q{Rails asset pipeline wrapper for the Teambox Filetype Icons}
  spec.homepage      = "https://github.com/bold-app/teambox-icons-rails"
  spec.license       = 'MIT'


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'rails', '>= 3.2'
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
