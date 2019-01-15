class Bear

attr_accessor :name, :type, :roar

def initialize(name, type)
  @name = name
  @type = type
  @stomach = []
end

def count_fish
  return @stomach.count
end

def eat_fish(fish)
  @stomach << fish
end

def roar
return "RAAWWWRRRRR!!!!"
end




end
