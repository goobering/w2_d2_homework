require 'Minitest/autorun'
require 'Minitest/rg'

require_relative '../fish.rb'

class TestFish < MiniTest::Test

def setup()
  @fish = Fish.new("trout")
end

def test_create_fish()
  assert_equal(true, @fish.is_a?(Fish))
  assert_equal("trout", @fish.name())
end

end