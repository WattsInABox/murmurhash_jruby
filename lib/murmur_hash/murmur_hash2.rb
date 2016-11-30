module MurmurHash
  # a thin wrapper around the 32-bit java implementation of MurmurHash2
  class MurmurHash2
    # @example rawdigest('some-string-to-digest')
    # @param [String] str
    def rawdigest(str)
      byte_arr = str.to_java_bytes
      
      ::MurmurHashJava::MurmurHash.hash32(byte_arr, byte_arr.length)
    end
  end
end
