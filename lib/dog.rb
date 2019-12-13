class Dog
  # code goes here
  def initialize(dog_name, owner)
    @name = dog_name
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
  
  def walk
    @mood = "happy"
  end
  
  def sell 
    @mood = "nervous"
    @owner = nil 
  end

end
