class Dog
  
  @@all = []
  
  attr_accessor :owner,:mood
  attr_reader :name
  
  def initialize(dog_name,owner_obj)
    @name = dog_name
    @owner = owner_obj
    @mood = "nervous"
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end