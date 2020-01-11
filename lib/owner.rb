class Owner
  
  @@all = []
  
  attr_reader :name,:species
  
  def initialize(owner_name)
    @name = owner_name  
    @species = "human"
    @@all << self
  end
  
  def say_species
    "I am a human."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all = []
  end
  
  def cats
    Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end
  
  def buy_cat(cat_name)
    Cat.new(cat_name,self)
  end
  
  def buy_dog(dog_name)
    Dog.new(dog_name,self)
  end
  
  def walk_dogs
    Dog.all.map{|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    Cat.all.map{|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    Dog.all.select{|dog| dog.owner == self}.map do |dog| 
      dog.mood = "nervous"
      dog.owner = nil
    end
      
    Cat.all.select{|cat| cat.owner == self}.map do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
  end
  
  def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
end