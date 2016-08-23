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


puts createaccount
