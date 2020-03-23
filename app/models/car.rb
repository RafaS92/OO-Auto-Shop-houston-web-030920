class Car
  @@all =[]
  
  attr_reader :make, :model, :classification, :owner, :mechanic
  

  def initialize(make, model, classification, owner,mechanic)
    @make = make
    @model = model
    @classification = classification
    @@all << self
    @owner = owner
    @mechanic = mechanic
  end

  def self.all
    @@all 
  end

  def self.classifications
    array = []
    @@all.each do |car|
      array << car.classification
    end
    return array
  end

  def mechanic_expertise
     array = []
     Mechanic.all.each do |mechanic|
      if self.classification == mechanic.specialty
        array << mechanic
      end
    end

    return array
  end

  

  


end
