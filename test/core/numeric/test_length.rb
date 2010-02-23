require 'facets/numeric/length'
require 'test/unit'


class TC_Numeric_Length < Test::Unit::TestCase
  def test_length
    (-5..5).step(0.2) do |number|
      assert number == number.length
    end
  end
end

