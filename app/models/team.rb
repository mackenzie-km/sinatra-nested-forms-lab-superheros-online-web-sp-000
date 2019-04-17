class Team
  attr_accessor :name, :motto
  @@all = []

  def initialize(name: name, motto: motto)
    @name = name
    @motto = motto
    @@all << self
  end
end
