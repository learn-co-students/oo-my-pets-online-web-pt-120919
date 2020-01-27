class Owner
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end  

  def species
    @species
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
  
  def self.reset_all
    @@all.clear
  end  
  
  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end
  
  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
     Dog.all.each do |dog|
       dog.mood = "happy"
     end
  end
   
   def feed_cats
     Cat.all.each do |cat|
       cat.mood = "happy"
     end
  end
   
  def sell_pets
    all_pets = []
    all_pets = cats + dogs
    all_pets.each do |p|
      p.owner = nil
      p.mood = "nervous"
    end 
   end
     
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end  


end