module MurmurHash
  # the 64-bit version of MurmurHash2, supposedly. I have doubts about either this
  # java implementation or the digest-murmurhash gem's implementation. I don't
  # get equivalent results when passing in a String into them so I'm wondering
  # which one is most similar to the original C++ implementation.
  # 
  # Either way, for JD Power's purposes, we just need this java version to be
  # thinly wrapped in ruby b/c it's the version we're already using and we need
  # all of our keys to stay the same for now. Therefore, I have no need to figure
  # out which version (this one or digest-murmurhash's) is more correct.
  class MurmurHash64a
    # @example rawdigest('some-string-to-digest')
    # @param [String] str
    def rawdigest(str)
      byte_arr = str.to_java_bytes
      
      ::MurmurHashJava::MurmurHash.hash64(byte_arr, byte_arr.length)
    end
  end
end
