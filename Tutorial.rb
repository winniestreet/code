class Tutorial
  def initialize(name, type, difficulty)
    @name = name
    @type = type
    @difficulty = difficulty
  end

  def difficulty
    return @difficulty
  end

  def type
    return @type
  end

  def is_harder_than?(tutorial)
    diff = {:easy => 1, :medium => 2, :hard => 3}

    if @type != tutorial.type
      puts "You cannot compare a #{type.to_s.capitalize} tutorial with a #{tutorial.type
      .to_s.capitalize} tutorial"

    elsif diff(@difficulty) > tutorial.diff
    end
  end
end








tutorial1 = Tutorial.new("Object Oriented Ruby", :ruby, :medium)
tutorial2 = Tutorial.new("Introduction to JavaScript", :javascript, :easy)
tutorial3 = Tutorial.new("HTTP Requests, AJAX and APIs", :javascript, :medium)

tutorial2.is_harder_than?("easy")
