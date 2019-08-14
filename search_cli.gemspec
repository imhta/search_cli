# frozen_string_literal: true

# search_cli.gemspec
Gem::Specification.new do |s|
  s.name = 'search_cli'
  s.version = '0.1.0'
  s.executables << 'search_cli'
  s.date        = '2019-08-14'
  s.summary     = 'ruby gem for search stackoverflow, bing, rubygem , etc,. from cli'
  s.description = 'ruby gem for search stackoverflow, bing, rubygem , etc,. from cli'
  s.authors     = %w[imhta adbusaid10]
  s.email       = ['imhtapm@gmail.com', 'abdusaid.ab@gmail.com']
  s.files       = ['lib/display_module.rb', 'lib/search.rb']
  s.homepage = 'https://rubygems.org/gems/search_cli'
  s.metadata = { 'source_code_uri' => 'https://github.com/imhta/search_cli' }
  s.license = 'MIT'
end
