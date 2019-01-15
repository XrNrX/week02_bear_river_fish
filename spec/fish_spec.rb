require("minitest/autorun")
require("minitest/rg")
require_relative("../Fish")
# require_relative("../Bear")
# require_relative("../River")
class TestFish < MiniTest::Test

def setup
  @fish1 = Fish.new("King Salmon")
end

def test_does_fish_have_name
  assert_equal("King Salmon", @fish1.name)
end


end
