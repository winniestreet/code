exit = false #this won't get executed in the code until we call it

def menu
  puts "1 for exit"
  puts "2 for poem"
end

until exit do

  menu
  command = gets.chomp

  if command == '1'
  exit = true
  elsif command == '2'
  puts "hello"
  else
  puts "wrong command"
end
end
