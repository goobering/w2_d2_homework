class Bear

def initialize(name)
  @name = name
  @stomach_contents = []
end

def name()
  return @name
end

def stomach_contents()
  return @stomach_contents
end

def eat_fish_from_river(fish, river)
  if river.fish().include?(fish)
    @stomach_contents.push(fish)
    river.remove_fish(fish)
  end
end

def roar()
  return "ROAR"
end

def get_num_stomach_contents()
  return @stomach_contents.count()
end

end