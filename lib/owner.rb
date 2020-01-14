class Owner
  # code goes here
  attr_reader :name, :species
  
  @@all = [] 
  
  def initialize(name, species="human") 
    @species = species 
    @name = name  
    
    @cats = [] 
    @dogs = []
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
    Cat.all.select {|cat| cat.owner == self }
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner == self }
  end
  
  def buy_cat(cat) 
    new_cat = Cat.new(cat, self)
  end 
  
  def buy_dog(dog) 
    new_dog = Dog.new(dog, self) 
  end 
  
  def walk_dogs 
    self.dogs.each do |dog| 
      dog.mood = "happy" 
    end
  end 
  
  def feed_cats 
    self.cats.each do |cat| 
      cat.mood = "happy" 
    end
  end
   
  def sell_pets 
    self.cats.each do |cat| 
      cat.owner = nil 
      cat.mood = "nervous" 
    end 
    
    self.dogs.each do |dog| 
      dog.owner = nil 
      dog.mood = "nervous" 
    end
  end 
  
  def list_pets 
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
end