require 'Minitest/autorun'
require 'Minitest/rg'

require_relative '../river.rb'
require_relative '../fish.rb'

class TestRiver < MiniTest::Test

def setup()
  @river = River.new("Danube")

  @fish_1 = Fish.new("trout")
  @fish_2 = Fish.new("salmon")
  @fish_3 = Fish.new("pike")

end

def test_create_river()
  assert_equal(true, @river.is_a?(River))
  assert_equal("Danube", @river.name())
end

def test_get_num_fish()
  @river.add_fish(@fish_1)
  assert_equal(1, @river.get_num_fish())
end

def test_add_fish_to_river()
  @river.add_fish(@fish_1)

  assert_equal(1, @river.get_num_fish())
end

def test_remove_fish_from_river()
  @river.add_fish(@fish_1)
  @river.remove_fish(@fish_1)
  assert_equal(0, @river.get_num_fish())
end

def test_get_fish()
  @river.add_fish(@fish_1)
  @river.add_fish(@fish_2)
  @river.add_fish(@fish_3)
  assert_equal([@fish_1, @fish_2, @fish_3], @river.fish())
end

end