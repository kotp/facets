require 'facets/numeric/length'
require 'test/unit'


class TC_Integer < Test::Unit::TestCase
  def test_length
    (0..10).each do |power|
      assert((10 ** power).length == (power + 1),"#{(10**power)} has #{(10**power).to_s.length} digits, but Facets::length currently reports #{(10 ** power).length}")
    end
  end
end

