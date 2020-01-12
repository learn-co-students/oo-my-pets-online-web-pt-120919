class Owner
  attr_reader :name, :species
  attr_accessor :cats, :dogs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end
  
  def name
    @name
  end
  
  def say_species
    "I am a #{species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.length
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    @dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    
    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    @cats.clear
    @dogs.clear
  end
  
  def list_pets
    "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end 
end