require File.dirname(__FILE__) + '/test_helper'

class DeferrableTest < Test::Unit::TestCase
  class Foo
    include Deferrable

    def later
      complete_deferred
    end

    def nevermind
      clear_deferred
    end
  end

  should "defer execution" do
    foo = Foo.new

    count = 0
    foo.deferred do
      count += 1
    end

    assert_equal 0, count

    foo.later

    assert_equal 1, count
  end

  should "now_and_later" do
    foo = Foo.new

    count = 0
    foo.now_and_later do
      count = 7
    end

    assert_equal 7, count

    count = 0

    foo.later

    assert_equal 7, count
  end
end
