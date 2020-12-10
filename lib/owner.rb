class Owner
  require 'pry'
  #require_relative 'dog'
  #require_relative 'cat'  
  attr_accessor  :owner
  attr_reader :name, :species
  @@all = []
  
  
  def initialize(name)
    @name = name
    @owner = owner
    @species = "human"
    @@all << self
  end
  
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
    @@all.clear
  end

  def cats
    Cat.all.select {|x| x.owner == self }
   end

   def dogs
    Dog.all.select {|x| x.owner == self }
   end

   def buy_cat(name)
    Cat.new(name, self)
   
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    dogs.each {|x| x.mood = "happy"}
  end

  def feed_cats
    cats.each {|x| x.mood = "happy"}
  end

  def sell_pets
   pets = self.dogs + self.cats      
   pets.each {|x| x.mood = "nervous"}
    pets.each {|x| x.owner = nil}
  end

  def list_pets
   "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end



   






 # def name
  #  @name = name_par
  #end

  
  
  
 
end