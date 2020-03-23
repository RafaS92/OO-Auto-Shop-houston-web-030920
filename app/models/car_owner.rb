class CarOwner
  @@all = []
  attr_reader :name, :mechanic

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def owners_cars
    Car.all.select do |car|
      car.owner == self
    end
  end

  def mechanics
    array = []
    Car.all.each do |car|
      if car.owner == self
        array << car.mechanic
      end
    end
    return array
  end

  def self.averange
    total = 0.00
    @@all.each do |owner|
      p owner
      total += owner.owners_cars.count
    end
    total/@@all.size


  end


end
