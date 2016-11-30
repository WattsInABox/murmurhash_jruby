require 'minitest/autorun'
require 'murmurhash_jruby'

class MurmurHash2Test < Minitest::Test
  def setup
    @hasher = ::MurmurHash::MurmurHash2.new
  end

  def test_positive_32_bit_murmur_hash_representation
    string = 'USNJMARLTON504616285639.8786-74.896934005EST'
    murmur_64 = @hasher.rawdigest(string)

    assert_equal 181462944, murmur_64
  end

  def test_negative_32_bit_murmur_hash_representation
    string = 'USVARESTON511887270338.9627-77.337351059EST'
    murmur_64 = @hasher.rawdigest(string)

    assert_equal(-1449947371, murmur_64)
  end
end
