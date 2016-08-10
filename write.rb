puts "What file do you want to read?"
filename = gets.chomp
txt = open(filename, 'a+')

puts "The file you opened was #{filename}"
puts "=" * 15
print txt.read

puts "=" * 15
puts "What exclamation would you like to add?"
exclamation = gets.chomp

txt.write(exclamation)
txt.write("\n")
txt.rewind
puts "=" * 15
print txt.read
txt.close
