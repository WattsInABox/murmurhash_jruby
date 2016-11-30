Gem::Specification.new do |s|
  s.name        = 'murmurhash_jruby'
  s.version     = '0.0.1'
  s.date        = '2016-11-30'
  s.summary     = 'MurmurHash in JRuby'
  s.description = 'A jruby wrapper of a a very specific java implementation of '\
  'the MurmurHash2 algorithm. There is a 64-bit and a 32-bit version.'
  s.authors     = ['Billy Watson']
  s.files       = [
    'lib/murmurhash_jruby.rb',
    'lib/murmur_hash/murmur_hash2.rb',
    'lib/murmur_hash/murmur_hash64a.rb',
    'target/classes/org/jdpower/MurmurHash.class'
  ]
  s.homepage    = 'http://rubygems.org/gems/murmurhash_jruby'
  s.license     = 'MIT'
  s.required_ruby_version = '>= 1.9.3'
  s.add_development_dependency 'minitest', '~> 5.0'
  s.add_development_dependency 'rake', '~> 11'
end
