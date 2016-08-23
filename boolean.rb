puts "Choose a menu item"
puts "1 to exit, 2 for a poem"
command = gets.chomp
case command
when "1"
  exit == true
when "2"
  puts "=" *15
  puts "Hello"
else
  puts "Wrong command"
end
#use 'case' if there's only one variable you are testing
