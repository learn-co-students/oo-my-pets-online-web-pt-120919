require 'pry'
class Owner
  @@all = []
  attr_accessor :dog, :cat
  attr_reader :species, :name
  def initialize(name, species = "human")
    @name = name 
    @species = species 
    @@all << self 
  end

  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count 
    @@all.count
  end
  
  def cats 
    Cat.all.select { |i| i.owner == self}
  end
  
  def dogs
    Dog.all.select { |i| i.owner == self}
  end
  
  def buy_cat(cat)
    cat = Cat.new(cat, self)
    cat.owner = self
  end
  
  def buy_dog(dog)
    dog = Dog.new(dog, self)
    dog.owner = self
  end
  
  def walk_dogs
    Dog.all.each do |dog|
      if dog.owner == self
        dog.mood = "happy"
      end
    end
  end
  
  def feed_cats
    Cat.all.each do |cat| 
      if cat.owner == self
        cat.mood = "happy"
      end
    end
  end
  
  def sell_pets
    Dog.all.each do |dog|
    if dog.owner == self 
      dog.mood = "nervous"
      dog.owner = nil 
    end
    end
  
  
  
     Cat.all.each do |cat|
      if cat.owner == self 
        cat.mood = "nervous"
        cat.owner = nil 
        #binding.pry 
      end
    end
  
   end
  
  def list_pets
    @dog_count = 0 
    @cat_count = 0 
    Dog.all.each do |dog|
      if dog.owner == self
        @dog_count += 1
      end
    end
    
    Cat.all.each do |cat|
      if cat.owner == self
        @cat_count += 1 
      end
    end
    
    "I have #{@dog_count} dog(s), and #{@cat_count} cat(s)."
  end
  
  def self.reset_all
    @@all =[]
  end
  
  
  # code goes here
end