class Car
  attr_accessor :make, :age, :topspeed, :kmpl, :fuel, :destination

 def initialize(make, age, topspeed, kmpl, fuel, destination)
   @make = make
   @age = age
   @topspeed = topspeed
   @kmpl = kmpl
   @fuel = fuel
   @destination = destination
 end

 def kmintank_calc
   @fuel.to_i * @kmpl.to_i
 end

 def time_to_dest
   @destination.to_i / @topspeed.to_i
 end
end

class Driver
  attr_accessor :name, :car, :age, :contact

  def initialize(name, car, age, contact)
    @name = "Winnie"
    @car = car
    @age = age
    @contact = contact
  end
end

puts "Hi, what's your name?"
name = gets.chomp
system("clear")
puts "Hi #{name}"
puts "How many litres do you have in your tank?"
fuel = gets.chomp
system("clear")
puts "How far away is your destination in km?"
destination = gets.chomp
system("clear")

driver = Driver.new("Winnie", Car.new("Cadillac", "1960", "150kmph", "100",
 fuel, destination), 23, "winnie.street@thugapple.com")

puts "What would you like to do?
      1. Calculate how many km I have in the tank
      2. Calculate how long it will take to get to my destination if I go
      at topspeed"
choice = gets.chomp
if choice.to_i == 1
  system("clear")
 puts driver.car.kmintank_calc.to_s + " km"
 elsif choice.to_i == 2
   system("clear")
   puts "approximately " + driver.car.time_to_dest.to_s + " hours"
end
