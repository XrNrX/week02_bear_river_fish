require("minitest/autorun")
require("minitest/rg")
require_relative("../River")
require_relative("../Bear")
require_relative("../Fish")

class TestRiver < MiniTest::Test

  def setup
    @river = River.new("A Big River", ["Salmon", "Pike", "Haddock"])
    @fish1 = Fish.new("Salmon")
    @fish2 = Fish.new("Haddock")
    @bear = Bear.new("Claws", "Brown Bear")
  end

  def test_does_river_have_a_name
    assert_equal("A Big River", @river.name)
  end

  def test_can_we_check_fish_pop
    assert_equal(0, @river.count_fish)
  end

  def test_if_bear_takes_fish
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)   # i know i need to include the bear here but
    @river.lose_fish(@fish1)  # just fell short i'm afraid!!
    assert_equal(1, @river.count_fish)
  end



end
