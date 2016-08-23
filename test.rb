require 'date'
dayNames = Date::ABBR_DAYNAMES

@availabilitystart = Hash.new
@availabilityend = Hash.new
dayNames.each do |day|
  puts "Hi,enter your start availability for #{day}"
   @availabilitystart["#{day}"] = gets.chomp
 puts "Hi,enter your end availability for #{day}"
   @availabilityend["#{day}"] = gets.chomp
  system("clear")
end

puts @availabilitystart
puts @availabilityend
# availability = Hash.new
# availability["mon"] = "12"
# availability["tue"] = "13"
#
# puts availability
