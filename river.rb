class River

def initialize(name)
  @name = name
  @fish = []
end

def name()
  return @name
end

def fish()
  return @fish
end

def get_num_fish()
  return @fish.count()
end

def add_fish(fish)
  @fish.push(fish)
end

def remove_fish(fish)
  if @fish.include?(fish)
    @fish.delete(fish)
  end
end

end