# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'cocoapods-disable-podfile-validations'
  spec.version       = File.read(File.expand_path('VERSION', __dir__))
  spec.authors       = ['Samuel Giddins']
  spec.email         = ['segiddins@segiddins.me']
  spec.summary       = 'A CocoaPods plugin that allows disabling Podfile ' \
                       'validations.'
  spec.homepage      = 'https://github.com/segiddins/cocoapods-disable-podfile-validations'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*', 'VERSION', '*.{md,txt}']

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 12.3'

  spec.required_ruby_version = '~> 2.6'
end
