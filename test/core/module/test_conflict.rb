require 'facets/module/conflict'
require 'test/unit'

class Test_Module_Conflict < Test::Unit::TestCase

  class X
    def q; "qx"; end
  end

  class Y
    def q; "qy"; end
  end

  if RUBY_VERSION < '1.9'
    def test_conflict?
      assert_equal( ["q"], X.conflict?(Y) )
    end
  else
    def test_conflict?
      assert_equal( [:q], X.conflict?(Y) )
    end
  end
end

