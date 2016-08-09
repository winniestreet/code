class Person

  def initialize(name, age) #define the attributes
    @name = name
    @age = age #have the input age stored in an age variable
  end

  def getname
    return @name
  end

  def whatsyourage
    return @age
  end

  def setname(name)
    @name = name
  end
end

puts "hey what's your name"

username = gets.chomp

john = Person.new("John", 23) #set up a new Person called "John" and put him in
#a variable called 'john'
trent = Person.new("Trent", 26)
name = trent.setname("Winnie")
age = trent.whatsyourage

puts "the name of the person is #{username} and his age is #{age}"
