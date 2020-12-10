class Dog
    attr_accessor  :owner , :mood
    attr_reader :name    
    @@all = []
  def initialize(name_par, owner_obj_par)
    @mood = "nervous"
    @name = name_par
    @owner = owner_obj_par
    @@all << self
  end


  def self.all
    @@all
  end



end