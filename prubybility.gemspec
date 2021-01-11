Gem::Specification.new do |s|
  s.name        = 'prubybility'
  s.version     = '0.0.0'
  s.date        = '2021-01-08'
  s.summary     = "Ruby interface for probability distributions"
  s.description = "Ruby interface for probability distributions"
  s.authors     = ["Jacob Lee"]
  s.email       = 'jacob.nmi.lee@gmail.com'
  s.files       = 
    Dir.chdir(File.expand_path('..', __FILE__)) do
      `git ls-files -z`.split("\x0").reject { |f| 
      f.match(%r{^(test|spec|features)/}) }
    end
    
  s.homepage    =
    'https://rubygems.org/gems/prubybility'
  s.license       = 'GPL-3.0-only'
end