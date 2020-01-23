class Cat
  @@all = []
  attr_accessor :owner, :mood
  attr_reader :name
  def initialize(name,owner, mood = "nervous")
    @name = name
    self.owner = owner
    @mood = mood
    @@all << self
  end
  
  def self.all
    @@all
  end
 
  # code goes here
end