puts "You enter a room with two doors. Do you open door 1 or door 2?"
print "> "
door = gets.chomp

if door == "1"
  puts "You won $5000!"
elsif door == "2"
  puts "You stare into an endless pit of despair"
else
  puts "You failed"
end
