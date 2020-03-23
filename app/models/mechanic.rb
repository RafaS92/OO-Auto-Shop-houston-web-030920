class Mechanic
  @@all = []
  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def services_cars
    Car.all.select do |car|
      car.mechanic == self
    end
  end

  def car_owners
    array=[]
    Car.all.each do |car|
      if car.mechanic == self
        array.push(car.owner)
      end
    end
    return array
  end

  def names_owners
    array = []
    self.car_owners.each do |owner|
      array << owner.name
    end
    return array
  end


end
