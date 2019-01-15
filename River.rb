class River
  attr_accessor :name, :fish

  def initialize(name, fish)

    @name = name
    @fish = fish
    @fish_pop = []

  end

  def count_fish
    return @fish_pop.count
  end

  def add_fish(fish)
    @fish_pop << fish
  end

  def lose_fish(fish)
    @fish_pop.pop
  end




end
