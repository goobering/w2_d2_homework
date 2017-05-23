require 'Minitest/autorun'
require 'Minitest/rg'

require_relative '../bear.rb'
require_relative '../fish.rb'
require_relative '../river.rb'


class TestBear < MiniTest::Test

def setup()
  @bear = Bear.new("Yogi")
  @fish = Fish.new("trout")
  @river = River.new("Danube")
  @river.add_fish(@fish)
end

def test_create_bear()
  assert_equal(true, @bear.is_a?(Bear))
  assert_equal("Yogi", @bear.name())
end

def test_get_stomach_contents()
  @bear.eat_fish_from_river(@fish, @river)
  assert_equal([@fish], @bear.stomach_contents())
end

def eat_fish_from_river()
  @bear.eat_fish_from_river(@fish, @river)
  assert_equal(true, @bear.stomach_contents().include?(@fish))
  assert_equal(0, @river.get_num_fish())
end

def test_roar()
  assert_equal("ROAR", @bear.roar())
end

def test_count_stomach_contents()
  @bear.eat_fish_from_river(@fish, @river)
  assert_equal(1, @bear.get_num_stomach_contents())
end

end