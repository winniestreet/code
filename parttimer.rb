require 'Terminal-Table'
require 'date'
DAY = Date::ABBR_DAYNAMES

class User
  attr_accessor :name, :contact, :availability
  def initialize(name, contact, type, availability)
    @availability = {}
    DAY.each do |day|
      @availability["#{day}"] = [rand(1..4), rand(8..12)]
    end
    @name = name
    @contact = contact
    @type = type
  end

  def overlap(s_starttime, s_endtime, a_starttime, a_endtime)
    if a_starttime.to_i <= s_starttime.to_i && a_endtime.to_i >= s_endtime.to_i
    puts "You have a match!"
    else
    puts "Sorry, there are no matches"
    end
  end


end

class Employer
  attr_accessor :location, :accountname, :rate, :shift, :availability

  def initialize(location, accountname, rate, shifts)
    @accountname = accountname
    @location = location
    @rate = rate
    @shifts = shifts
    @availability = {}
    DAY.each do |day|
      @availability["#{day}"] = [rand(1..4), rand(8..12)]
    end
  end

  def shift
    @shiftstart = Hash.new
    @shiftend = Hash.new
    puts "hi"
    daynames = Date::ABBR_DAYNAMES
      daynames.each do |day|
      puts "Hi,enter your start availability for #{day}"
       @shiftstart["#{day}"] = gets.chomp
      puts "Hi,enter your end availability for #{day}"
       @shiftend["#{day}"] = gets.chomp
      system("clear")
    end
  end
end

class Jobseeker < User

  def initialize
    super (name, contact)
    @availability = {}
    DAY.each do |day|
      @availability["#{day}"] = [rand(1..4), rand(8..12)]
    end
    # @availability = availability
  end

  attr_accessor :availability

  def createaccount
    puts "Create new account"
    print "Name:"
          name = gets.chomp
    print "Contact number:"
          contact = gets.chomp
  end

  def availability
    @availabilitystart = Hash.new
    @availabilityend = Hash.new
    puts "hi"
    daynames = Date::ABBR_DAYNAMES
      daynames.each do |day|
      puts "Hi,enter your start availability for #{day}"
       @availabilitystart["#{day}"] = gets.chomp
      puts "Hi,enter your end availability for #{day}"
       @availabilityend["#{day}"] = gets.chomp
      system("clear")
      @newaccount = File.open("#{accountname}.rb", 'a+')
      @newaccount.write(@availabilitystart.inspect)


    end
  end
  attr_accessor :availabilitystart , :availabilityend

  # def viewaccount
  #   rows = []
  #   rows << ["Name", newaccount.name]
  #   rows << :separator
  #   rows << ["Contact", newaccount.contact]
  # end
end

def createaccount
  puts "Create new account"
  print "Name:"
        name = gets.chomp
  print "Contact number:"
        contact = gets.chomp
  @newaccount = File.open("#{name}.rb", 'a+')
  @newaccount.write(name + "\n" + contact)
  @newaccount.close
end

# availability = Availability.new(:starttime, :endtime)
newaccount = createaccount
puts "Welcome to Parttimer"
puts "Are you a...
      1. Jobseeker
      2. Employer"
  answer = gets.chomp
  if answer == "1"
    puts "Have you already got an account with Parttimer?
          1. Yes
          2. No"
    answer = gets.chomp
    if answer == "1"
      puts "Please enter your account name"
    elsif answer == "2"
      puts "Let's create an account"
      puts newaccount
      puts "Now add your availability for the week"
      newaccount.availability
      # puts "Looking for matches"
      # sleep (1)
      # newaccount.overlap(9, 15, @availabilitystart["Mon"],
      #  @availabilityend["Mon"])

    end
  end




#   @employer = {}
#   @employee = {}
#
#
#
#   def overlap(s_starttime, s_endtime, a_starttime, a_endtime)
#   if a_starttime.to_i <= s_starttime.to_i && a_endtime.to_i >= s_endtime.to_i
#     puts "You have a match!"
#   else
#     puts "Sorry, there are no matches"
#   end
#
# end
emplaccount = User.new("Coder Factory", "coderfactory@cf.com", "empl")
newempl = User.new("Coder Factory", "coderfactory@cf.com", "empl")
puts newempl.availability
puts emplaccount.availability
DAY.each do |day|
puts "#{day}"
overlap(newempl.availability["#{day}"][0], newempl.availability["#{day}"][1],
emplaccount.availability["#{day}"][0], emplaccount.availability["#{day}"][1])
end
