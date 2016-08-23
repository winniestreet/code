class Workshop
  def initialize (date, venue, coaches, students)
    @date = date
    @venue = venue
    @coaches = coaches
    @students = students
  end

  def add_participant
    puts "Please select a membership: \n 1. Student \n 2.Coach"
    membership = gets.chomp
    if membership == "1"
      puts "Why are you studying coding?"
      :about = gets.chomp

end
class Student
  attr_accessor :name, :about
  def initialize (about)
    @name = name
    @about = about
  end
end

class Coach
  attr_accessor :name, :bio
  def initialize (name, bio)
    @name = name
    @bio = bio
  end

  def add_skill(skill)
    
end
