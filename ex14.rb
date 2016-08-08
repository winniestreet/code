class Person

  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name

  end

  def age
    @age
  end

    def self.all #
      ObjectSpace.each_object(self).to_a
    end


end

class Superhero < Person

  def initialize(age, name, superpower)

  super(age, name)
@superpower = superpower

end

def superpower
  @superpower
end

end

trent = Person.new(26, "Trent")
nandini = Superhero.new(20, "Nandini", "coding")

puts trent.name
puts nandini.name

puts trent.class
puts nandini.class
