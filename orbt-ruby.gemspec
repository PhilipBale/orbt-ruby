Gem::Specification.new do |s|
  s.name        = 'orbt-ruby'
  s.version     = '0.0.1'
  s.date        = '2010-04-28'
  s.summary     = "Orbt messaging platform!"
  s.description = "A ruby integration for the Orbt messaging platform"
  s.authors     = ["Philip Bale"]
  s.email       = 'philip@logikcomputing.com'
  s.files       = ["lib/orbt.rb"]
  s.homepage    =
    'https://github.com/PhilipBale/orbt-ruby'
  s.license       = 'MIT'

  s.add_dependency "rest-client", "~> 1.8"
end