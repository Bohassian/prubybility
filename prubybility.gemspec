# frozen_string_literal: true

require File.expand_path('lib/prubybility/version', __dir__)

Gem::Specification.new do |s|
  s.name                  = 'prubybility'
  s.version               = Prubybility::VERSION
  s.date                  = '2021-01-08'
  s.summary               = 'Ruby interface for probability distributions'
  s.description           = 'This gem allows creation and interrogation of
  probability distributions'
  s.authors               = ['Jacob Lee']
  s.email                 = 'jacob.nmi.lee@gmail.com'
  s.files                 = [
    '.gitignore',
    'LICENSE',
    'Rakefile',
    'Gemfile',
    'prubybility.gemspec',
    'lib/prubybility.rb',
    'lib/prubybility/binomial.rb',
    'lib/prubybility/bernoulli.rb',
    'lib/prubybility/combinations.rb',
    'lib/prubybility/negative_binomial.rb',
    'lib/prubybility/geometric.rb'
  ]
  s.homepage              = 'https://github.com/Bohassian/prubybility'
  s.license               = 'GPL-3.0-only'
  s.platform              = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.7.2'

  s.add_development_dependency 'minitest', '~> 5.14'
  s.add_development_dependency 'rubocop', '~> 1.8'
end
