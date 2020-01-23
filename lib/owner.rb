require"pry"
class Owner
  attr_reader :species,:name 
  @@all = []
  def initialize(name)
    @name= name
    @species = "human"
    @@all << self
  end
  def say_species
  return "I am a #{@species}."
  end
  def self.all
    return @@all 
  end 
  def self.count
     self.all.length
  end 
  def self.reset_all
  self.all.clear
  end
  def cats 
  Cat.all.select {|cat| cat.owner == self}
  end
  def dogs 
  Dog.all.select {|dog| dog.owner == self}
  end
  def buy_cat(name) 
 Cat.new(name, self)
  end 
  def buy_dog(name)
  Dog.new(name, self)
end
def walk_dogs
dogs.each {|walk| walk.mood = "happy" }
end
def feed_cats
  cats.each {|feed| feed.mood ="happy"}
end 
def sell_pets
  cats.each do |sell| sell.mood="nervous" 
  sell.owner=nil
  
  dogs.each do |sell| sell.mood="nervous" 
  sell.owner=nil
      end 
    end
  end
  
  def list_pets
    return"I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
end

