require 'minitest/autorun'
require 'murmurhash_jruby'

class MurmurHash64aTest < Minitest::Test
  def setup
    @hasher = ::MurmurHash::MurmurHash64a.new
  end

  def test_positive_64_bit_murmur_hash_representation
    string = 'USNJMARLTON504616285639.8786-74.896934005EST'
    murmur_64 = @hasher.rawdigest(string)

    assert_equal 9222850300915790864, murmur_64
  end

  def test_negative_32_bit_murmur_hash_representation
    string = 'USVARESTON511887270338.9627-77.337351059EST'
    murmur_64 = @hasher.rawdigest(string)

    assert_equal(-1954510100242067951, murmur_64)
  end
end
