lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

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

  s.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "rest-client", "~> 1.8"
end