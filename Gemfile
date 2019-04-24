# frozen_string_literal: true

source 'https://rubygems.org'

# Specify your gem's dependencies in cocoapods-amicable.gemspec
gemspec

def cocoapods_gem(name, gem_name = name.downcase, **opts)
  gem gem_name, git: "https://github.com/CocoaPods/#{name}", **opts
end

group :development do
  gem 'cocoapods'

  gem 'rspec'
  gem 'rubocop'
end
