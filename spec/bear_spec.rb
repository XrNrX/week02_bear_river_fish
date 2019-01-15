require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear")
require_relative("../Fish")
require_relative("../River")

class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Claws", "Brown Bear")
    @fish1 = Fish.new("Salmon")
    @river = River.new("A Big River", ["Salmon", "Pike", "Haddock"])
  end

def test_does_bear_have_a_name
  assert_equal("Claws", @bear.name)
end

def test_does_bear_have_type
  assert_equal("Brown Bear", @bear.type)
end

def test_can_bear_eat_fish
  @bear.eat_fish(@fish1)
  assert_equal(1, @bear.count_fish)
end

def test_can_bear_take_fish_from_river
  @bear.eat_fish(@river)



def test_roar
  assert_equal("RAAWWWRRRRR!!!!", @bear.roar)
end


end
