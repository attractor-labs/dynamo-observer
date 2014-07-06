
require File.expand_path('../lib/dynamo_observer/version', __FILE__)
require 'date'

Gem::Specification.new do |gem|
  gem.name = 'dynamo-observer'
  gem.version = DynamoObserver::VERSION
  gem.date = Date.today.to_s
  gem.license = 'MIT'
  gem.summary = %Q{Dynamo Observer}
  gem.description = %Q{AWS DynamoDB Cloud Watch data collector.}
  gem.authors = ['Max Makarochkin']
  gem.email = 'maxim.makarochkin@gmail.com'
  gem.homepage = 'https://github.com/attractor-labs/dynamo-observer'
  gem.require_path = 'lib'
  gem.files = Dir.glob("{lib,spec}/**/*")
  gem.required_ruby_version = '>= 1.9.3'
  gem.add_dependency 'bundler'
  gem.add_dependency 'rake'
  gem.add_dependency 'rspec'
  gem.add_dependency 'aws-sdk'
  gem.add_development_dependency 'fake_dynamo'
end