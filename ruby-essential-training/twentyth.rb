class Animal
  attr_accessor :name, :noise

  @@total_animals = 0

  def self.total_animals
    @@total_animals
  end

  def initialize(name, noise)
    @name = name
    @noise = noise
    puts "A new animal has been instantiated."
    @@total_animals += 1
  end

  def make_noise
    "#{@name} has sound #{@noise}"
  end
end

class Cow < Animal
  attr_accessor :own

  @@total_cows = 0

  def self.total_cows
    @@total_cows
  end

  def initialize(name, noise, own)
    super(name, noise)
    @own = own
    puts "A cow has been instantiated"
    @@total_cows += 1
  end

  def make_noise
    "#{name} is a cow and it bark #{noise}. It have #{own}"
  end
end

class Cat < Animal
  attr_accessor :own

  @@total_cats = 0

  def self.total_cats
    @@total_cats
  end

  def initialize(name, noise, own)
    super(name, noise)
    @own = own
    puts "A cat has been instantiated"
    @@total_cats += 1
  end

  def make_noise
    "#{name} is a cat and it bark #{noise}. It have #{own}"
  end
end

class Dog < Animal
  attr_accessor :own

  @@total_dogs = 0

  def self.total_dogs
    @@total_dogs
  end

  def initialize(name, noise, own)
    super(name, noise)
    @own = own
    puts "A dog has been instantiated"
    @@total_dogs += 1
  end

  def make_noise
    "#{super}\n#{name} is a dog and it bark #{noise}. It have #{own}"
  end
end

cow = Cow.new("Charlie", "Bozzzz", "Cow properties")
cat = Cat.new("Anny", "Moezzzz", "Cat properties")
dog = Dog.new("Jack", "Goau Goau", "Dog properties")

puts cow.make_noise
puts cat.make_noise
puts dog.make_noise

puts Animal.total_animals
puts Cat.total_cats
puts Dog.total_dogs
puts Cow.total_cows