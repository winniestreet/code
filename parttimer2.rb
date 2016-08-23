require 'Date'
require 'pstore'
class User
  def initialize(name, contact)
    @name = name
    @contact = contact
    @availability = {}
  end
  def self.all
    ObjectSpace.each_object(self).to_a
  end
  # def openfile
  #   store = Pstore.new("data.pstore")
  #   store.transaction do
  #   store[:availability] = "#{user.name}.rb"
  #   end
  # end
  attr_accessor :name, :age, :availability
end
class Employee < User
  def initialize(name, contact)
    super(name, age)
  end
  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
class Employer < User
  def initialize(name, contact)
    super(name, age)
  end
  def self.all
    ObjectSpace.each_object(self).to_a
  end
end
def createAccount
  puts "Hey, whats your name?"
  name = gets.chomp
  puts "hey, whats your contact number?"
  contact = gets.chomp
  puts "Are you a:"
  puts "\t1. Employee"
  puts "\t2. Employer"
  classType = gets.chomp
  classType == '1' ? type = Employee : type = Employer
  user = type.new(name, contact)
  puts "Please tell us your availability"
  availability(user)
  user

end
def availability(user)
    availabilitystart = {}
    Date::ABBR_DAYNAMES.each do |day|
      puts "Hi,enter your start availability for #{day}"
      startTime  = gets.chomp.to_i
      puts "Hi,enter your end availability for #{day}"
      endTime = gets.chomp.to_i
       availabilitystart["#{day}"] = [startTime, endTime]
    end
    # write_to_file(availabilitystart)
    user.availability = availabilitystart
end

def overlap(employee, employer)
  Date::ABBR_DAYNAMES.each do |day|
    if employee.availability[day][0] <= employer.availability[day][0] && employee.availability[day][1] >= employer.availability[day][1]
      puts "You have a match on #{day}!!"
    else
      puts "Sorry you are jobless on #{day}"
    end
  end
end

def openfile
store = Pstore.new("data.pstore")
store.transaction do
store[:availability] = "#{user.name}.rb"
end
end


# def write_to_file(hash)
#   open("#{user.name}.txt", 'w') |f|
#   f.puts "#{availabilitystart}"
# end


employee = createAccount
employee.openfile

employer = createAccount
employer.openfile
puts employee.availability
employee.openfile
# puts employer.availability
# overlap(employee, employer)
