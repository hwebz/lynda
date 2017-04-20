class Animal
  attr_accessor :age
  attr_writer :color
  attr_reader :legs, :arms

  def initialize
    @legs = 4
    @arms = 0
    puts "A new animal has been instantiated."
  end

  def color
    "The color is #{@color}"
  end

  def set_noise(noise)
    @noise = noise
  end

  def get_noise
    @noise
  end

  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def age
    "Animal age is #{@age}"
  end

  def make_noise
    "Moo!!"
  end
end

class Dog
  attr_reader :legs, :arms
  def initialize(legs, arms)
    @legs = legs
    @arms = arms
  end
end

animal = Animal.new
animal.set_noise("Noise!!!!")
puts animal.make_noise
puts animal.get_noise

animal2 = Animal.new
animal2.name = "Axe"
puts animal2.make_noise
puts animal2.name

animal3 = Animal.new
animal3.age = 21
animal3.color = "black"
puts animal3.age
puts animal3.legs
puts animal3.arms
puts animal3.color

dog = Dog.new(4, 0)
puts dog.legs
puts dog.arms

# Class method - Static
class Cat
  attr_accessor :legs, :arms

  # class attributes - Static
  @@infos = ['small', 'fat', 'thin', 'fast']
  @@total_cats = 0
  @@current_cats = []

  # class methods - Static
  def self.infos
    @@infos
  end

  def self.infos=(array=[])
    @@infos = array
  end

  def self.total_cats
    @@total_cats
  end

  def self.current_cats
    @@current_cats
  end

  def self.all_species
    ['cat', 'cow', 'dog', 'duck', 'horse', 'pig']
  end

  def self.create_with_attributes(legs, arms)
    Dog.new(legs, arms)
  end

  def initialize
    @@total_cats += 1
    @@current_cats << self
  end
end

p Cat.all_species
dog2 = Cat.create_with_attributes(4, 1)
puts dog2.legs
puts dog2.arms

p Cat.infos
cat1 = Cat.new
cat2 = Cat.new
p Cat.total_cats
p Cat.current_cats
Cat.infos = [1,2,3,4,5]
p Cat.infos

# Inheritance
