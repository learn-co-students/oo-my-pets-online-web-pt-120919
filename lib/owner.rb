class Owner
  # code goes here
#  #name  can have a name,  cannot change owner's name
# #species initializes with species set to human can't change its species
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

#  #say_species can say its species

  def say_species
    "I am a #{self.species}."
  end

# .all returns all instances of Owner that have been created
  def self.all
    @@all
  end

 # .count returns the number of owners that have been created
  def self.count
    Owner.all.count
  end


# .reset_all can reset the owners that have been created
  def self.reset_all
    Owner.all.clear
  end

#  Associations
#    Owner instance methods


#cats returnsa a collection of all the cats that belong to the owner
  def cats
    Cat.all.select{|cat| cat.owner == self}
  end

  #dogs returns a collection of all the dogs that belong to the owner
  #     (another method)
  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  #buy_cat   can buy a cat that is an instance of the Cat class
#            knows about its cats
  def buy_cat(name)
    Cat.new(name, self)
  end


# #buy_dog   can buy a dog that is an instance of the Dog class
#            knows about its dogs

  def buy_dog(name)
    Dog.new(name, self)
  end

#  #walk_dogs         walks the dogs which makes the dogs' moods happy


  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy" }
  end

#  #feed_cats feeds cats which makes the cat's moods happy

  def feed_cats
    Cat.all.each do |cat|
      cat.mood = "happy"
    end
  end

#  #sell_pets   can sell all its pets, which makes them nervous
#               can sell all its pets, which leaves them without an owner

  def sell_pets
    pets = self.dogs + self.cats

    pets.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end

#  #list_pets   can list off its pets

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end
