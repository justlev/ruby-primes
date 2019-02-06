lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'prime'
  spec.version       = '1.0'
  spec.authors       = ['Lev Perlman']
  spec.email         = ['justlev2@gmail.com']
  spec.summary       = 'Funding Circle Exercise'
  spec.license       = 'MIT'

  spec.files         = ['app.rb']
  spec.require_paths = %w(lib)
end

require_relative('./app')
