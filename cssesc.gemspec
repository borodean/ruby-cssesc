version = File.read(File.expand_path('../VERSION', __FILE__)).strip

Gem::Specification.new do |s|
  s.name     = 'cssesc'
  s.version  = version
  s.summary  = 'Ruby wrapper for a JavaScript library for escaping CSS strings and identifiers'

  s.license  = 'MIT'

  s.author   = 'Vadim Borodean'
  s.email    = 'borodean@gmail.com'
  s.homepage = 'http://github.com/borodean/ruby-cssesc'

  s.files    = Dir['lib/**/*']

  s.add_dependency 'activesupport'
  s.add_dependency 'cssesc-source', '0.1.0'
  s.add_dependency 'execjs'
end
