class Cat
  # code goes here
  
  def initialize(cat_name, owner)
    @name = cat_name
    @owner = owner
    @mood = "nervous"
    @@all << self 
  end
  
  
  @@all = []
  attr_reader :name
  attr_accessor :owner, :mood
  
  def self.all
    @@all
  end
  
  def feed 
    @mood = "happy"
  end
  
  def sell 
    @mood = "nervous"
    @owner = nil 
  end
  
end