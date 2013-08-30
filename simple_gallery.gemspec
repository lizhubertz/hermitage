# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_gallery/version'

Gem::Specification.new do |spec|
  spec.name          = 'simple_gallery'
  spec.version       = SimpleGallery::VERSION
  spec.authors       = ['Alexander Borovykh']
  spec.email         = ['immaculate.pine@gmail.com']
  spec.description   = %q{Ruby library for generation of image galleries.}
  spec.summary       = %q{Ruby library for generation of image galleries (thumbnails and full-size images viewer).}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rails', '>= 3.2'
  spec.add_dependency 'jquery-rails'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'capybara'
  spec.add_development_dependency 'sqlite3'

end
