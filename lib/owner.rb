require 'pry'
class Owner
  attr_reader :name, :species

  @@all = []

  def initialize(name, species = 'human')
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

  def self.reset_all
    @@all.clear
  end

  def cats
  Cat.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
  end

  def buy_dog(name)
    dog = Dog.new(name, self)
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
    self.dogs.each do |dog|
      dog.mood = "nervous"
    end
    self.cats.each do |cat|
      cat.mood = "nervous"
    end
    self.dogs.clear
    self.cats.clear
    Dog.all.each do |dog|
      if dog.owner == self
        dog.owner = nil
      end
    end
    Cat.all.each do |cat|
      if cat.owner == self
        cat.owner = nil
      end
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  # code goes here
end
