class Owner

  attr_reader :name , :species
  
  @@all = []
  
  def initialize (name)
    @name = name
    @@all << self
  end
  
  def species
    @species = "human"
  end
  
  def say_species
    return "I am a human."
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
    Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs
    Cat.all.select{|cat| cat.owner == self}
  end

  
end