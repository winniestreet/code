class Tutorial
initialize(name, type, difficulty)
@name = name
@type = type
@difficulty = difficulty

def first
  @first = first
end

def second
  @second = second
end

def is_harder_than?(tutorial1, tutorial2)

  if @type(tutorial1) == @type(tutorial2)

    @difficulty(tutorial1) > @difficulty(tutorial2)
    puts false








tutorial1 = Tutorial.new("Object Oriented Ruby", :ruby, :medium)
    tutorial2 = Tutorial.new("Introduction to JavaScript", :javascript, :easy)
    tutorial3 = Tutorial.new("HTTP Requests, AJAX and APIs", :javascript, :medium)

    tutorial1.is_harder_than?(tutorial2)
    # You cannot compare a Ruby with a JavaScript tutorial

    tutorial2.is_harder_than?(tutorial1)
    # You cannot compare a JavaScript with a Ruby tutorial

    tutorial2.is_harder_than?(tutorial3)
    # false

    tutorial3.is_harder_than?(tutorial2)
    # true
