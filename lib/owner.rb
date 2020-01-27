class Owner
  attr_accessor :pets,:cat,:dog
  attr_reader :species,:name
   
 

  def initialize(name,species="human")
   @name = name 
    @species = species
    @@all<< self
   
   @pets = {:cats=>[],:dogs=>[]}
  end
   @@all=[]
  #def name
    #@name
  #end 
    
      
  def say_species 
    "I am a #{@species}."
  end 
  def self.all
    @@all
  end 
  def self.count
    self.all.count
  end 
  def self.reset_all
    self.all.clear
  end 
 
 def buy_cat(name,owner=self)
   
  @pets[:cats] << Cat.new(name,owner)
  end
  
 def cats

 Cat.all.select {|cat| cat.owner == self}
 #@pets[:cats]

end 

 def buy_dog(name,owner=self)

   @pets[:dogs]<< Dog.new(name,owner)
 end 
 
 def dogs
   Dog.all.select {|dog| dog.owner == self}
   end
 def walk_dogs
   @pets[:dogs].each do |dog|
     dog.mood = "happy"
   end 
 end
  def feed_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
  end 
end 

def list_pets
  "I have #{self.dogs.length} dog(s), and #{self.cats.length} cat(s)."
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
    self.cats.each{|cat|
    cat.mood = "nervous"
    cat.owner = nil}
  
  self.dogs.each{|dog|
  dog.mood = "nervous"
  dog.owner = nil}
end 
 end 

 

     







 


 





  





                                                                                                                                                         
                                                                                                                                                         
                                                                      