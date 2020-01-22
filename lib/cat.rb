class Cat
  @@all_cats = []
  attr_reader :name
  attr_accessor :owner, :mood
  def initialize(name, owner)
    @name = name
    @@all_cats << self
    @owner = owner
    @mood = "nervous"
  end
  
  def self.all
    @@all_cats
  end 
  
  
end