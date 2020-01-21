class Owner

	attr_reader :name, :species
  
	ALL = []

	def initialize(name)
		@name = name
		@species = 'human'
		ALL << self
	end

	def say_species
		"I am a #{@species}."
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
		cat = Cat.new(name, self)
	end

	def buy_dog(name)
		dog = Dog.new(name, self)
	end

	def walk_dogs
		dogs.each do |dog|
			dog.mood = 'happy'
		end
	end

	def feed_cats
		cats.each do |cat|
			cat.mood = 'happy'
		end
	end

	def sell_pets
		pets = cats + dogs
		pets.each do |pet|
			pet.mood = 'nervous'
			pet.owner = nil
		end
	end

	def list_pets
		"I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
	end

	def self.all
		ALL
	end

	def self.count
		ALL.size
	end

	def self.reset_all
		ALL.clear
	end

end