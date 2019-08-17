require_relative 'lib/nessus_api/version'
Gem::Specification.new do |spec|
  spec.name           = %q{nessus_api}
  spec.author         = %q{Heyder}
  spec.version        = NessusApi::VERSION
  spec.date           = %q{2018-11-28}
  spec.summary        = %q{Ruby wrapper to Nessus API}
  spec.licenses       = ['MIT']  
  spec.description    = "Ruby wrapper to Nessus API (all verions)"
  spec.email          = 'eu@heyderandrade.org'
  spec.homepage       = 'https://rubygemspec.org/gems/nessus_api'
  spec.metadata       = { "source_code_uri" => "https://github.com/heyder/nessus_api" }
  spec.files          = Dir['lib/**/*.rb'] + Dir['assets/*'] + Dir['bin/*']
  spec.require_paths  = ["lib"]
  spec.required_ruby_version = '>= 2.5.1'
  spec.add_runtime_dependency( 'excon', '~> 0.62' )
  spec.add_runtime_dependency( 'oj', '~> 3.7' )
  spec.add_runtime_dependency( 'json', '~> 2.1' )
  spec.add_development_dependency( 'rspec', '~> 3.2' )
  spec.add_development_dependency( 'bundler', '~> 1.12' )
  spec.add_development_dependency( 'pry', '~> 0.12.2' )
end