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
  s.files                 = Dir['lib/**/*', 'src/**/*.rs', 'Cargo.toml', 'LICENSE', 'prubybility.gemspec', '.gitignore', 'Gemfile', 'Rakefile', '.tool-versions']
  
  s.extensions            = %w(extconf.rb)

  s.homepage              = 'https://github.com/Bohassian/prubybility'
  s.license               = 'GPL-3.0-only'
  s.platform              = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.7.2'

  s.add_development_dependency 'minitest', '~> 5.14'
  s.add_development_dependency 'rubocop', '~> 1.8'
end
