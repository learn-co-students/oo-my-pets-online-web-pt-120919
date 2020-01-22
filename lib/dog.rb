class Dog
  @@all_dogs = []
  attr_reader :name
  attr_accessor :owner, :mood
  def initialize(name, owner)
    @name = name
    @@all_dogs << self
    @owner = owner
    @mood = "nervous"
  end
  
  def self.all
    @@all_dogs
  end 
  
  
end