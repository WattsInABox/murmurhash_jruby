require 'bundler'
Bundler.require :default

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/test*.rb']
  t.verbose = true
end

require 'murmurhash_jruby'
