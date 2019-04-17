class Team
  attr_accessor :name, :motto, :heroes
  @@all = []

  def initialize(name, motto, heroes)
    @name = name
    @motto = motto
    @heroes = heroes
    @@all << self
  end

  def self.all
    @@all
  end
end
