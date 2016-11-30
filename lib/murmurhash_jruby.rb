$CLASSPATH << 'target/classes'
require 'java'

module MurmurHashJava
  java_import 'org.jdpower.MurmurHash'
end

module MurmurHash
  require 'murmur_hash/murmur_hash2'
  require 'murmur_hash/murmur_hash64a'
end
