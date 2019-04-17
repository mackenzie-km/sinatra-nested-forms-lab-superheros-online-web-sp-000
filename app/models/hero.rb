class Hero
  attr_accessor :name, :power, :biography
  @@all = []

  def initialize(name: name, power: power, biography: biography)
    @name = name
    @power = power
    @biography = biography
    @@all << self
    binding.pry
  end

end
