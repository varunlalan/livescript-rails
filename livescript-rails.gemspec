require_relative 'lib/livescript/rails/version'

Gem::Specification.new do |s|
  s.name     = 'livescript-rails'
  s.version  = LiveScript::Rails::VERSION
  s.authors  = ['Victor Hugo Borja', 'Bian Jiaping']
  s.email    = ['vic.borja@gmail.com', 'ssbianjp@gmail.com']
  s.homepage = 'https://github.com/Roonin-mx/livescript-rails'
  s.license  = 'MIT'

  s.summary     = %q{LiveScript adapter for the Rails asset pipeline.}
  s.description = %q{Add LiveScript support to the Rails asset pipeline.}

  s.files = Dir[
    'lib/**/*',
    'test/**/*',
    'Rakefile',
    'LICENSE',
    'README.md',
  ]

  s.add_runtime_dependency 'execjs', '~> 2.0'
  s.add_runtime_dependency 'livescript', '~> 2.3'
  s.add_runtime_dependency 'sprockets', '>= 3.0', '<= 5.0'

  s.add_development_dependency 'bundler', '~> 1.11'
  s.add_development_dependency 'rake', '~> 11.1'
  s.add_development_dependency 'minitest', '~> 5.8'
  s.add_development_dependency 'execjs', '~> 2.6'
  s.add_development_dependency 'rails', '>= 4.2'
end
