require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("Rafa")
co2 = CarOwner.new("Lessia")
co3 = CarOwner.new("Marcos")

mec1 = Mechanic.new("Jonh","S")
mec2 = Mechanic.new("Juan","FL")
mec3 = Mechanic.new("Rose","TX")

car1 = Car.new("altima",2015,"S",co1,mec1)
car2 = Car.new("maxima",2018,"TX",co2,mec3)
car3 = Car.new("porshe",2020,"FL",co3,mec1)
car4 = Car.new("porshello",2098,"FL",co1,mec2)
car5 = Car.new("porshello3",2048,"FL",co1,mec2)
car5 = Car.new("porshello5",2228,"FL",co2,mec2)


binding.pry
