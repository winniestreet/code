class Restaurant
  attr_accessor :name, :location, :menu
  def initialize(name, location, menu)
    @name = name
    @location = location
    @menu = menu

class Meal
  attr_accessor :name, :code, :price, :calories
  def initilize (name, code, price, calories)
    @name = name
    @code = code
    @price = price
    @calories = calories

  def openmenu(meals)
    puts
    "@code \t @name \t @price \t @calories"

  def choosemeal(code)
    @code = code
    if @code != 0
      puts "#{@code} + #{@name} + #{@price}"
    else
      puts "Please choose an existing meal number"
  end


meal1 = Meal.new("Thai Green Curry", 17, 890)
meal2 = Meal.new("Vegetable tagine", 12, 510)

puts "Hello and welcome to Bloomers"
puts "Please choose from one of the following options:
      1. View menu
      2. Get location
      3. Contact"
choice = gets.chomp
if choice == 1
  puts Meal.all do
    openmenu
end
