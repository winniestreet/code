class Person
  attr_accessor :name, :email, :address, :contact, :account

   def initialize (name, email, address, contact, account)
     @name =  name
     @email = email
     @address = address
     @contact = contact
     @account = account
   end
end

class BankAcc
 attr_accessor :accountnumber, :balance, :file

 def initialize (accountnumber, balance, file)
    @accountnumber = accountnumber
    @balance = balance
    @file = file
 end

 def viewbalance
   test = File.open(@file, 'r')
   test.read
 end

 def withdraw(amount)
   @amount = amount
   balance = File.open(@file, 'r+')
   new_balance = balance.read.to_i - @amount.to_i
   balance.rewind
   balance.write(new_balance)
   balance.close
 end

 def deposit(amount)
   @amount = amount
   balance = open(@file, 'r+')
   new_balance = balance.read.to_i + @amount.to_i
   balance.rewind
   balance.write(new_balance)
   balance.close
 end

 def logout(answer)
   @answer = answer
   if @answer == 2
     puts "Logging out"
     sleep (1)
   end
   break
 end
end

winnie = Person.new("Winnie", "winnie.street@thugapple.com", "2 Edward St",
 "0416481366", BankAcc.new("1234567", 7000, "bankingbalance.rb"))
answer = 99

while answer != 3
line = "*" * 30
menuchoice = "What would you like to do?\n1. Return to menu\n2. Exit"

   puts "Hi #{winnie.name}, what would you like to do?"
   puts "1. View balance"
   puts "2. Withdraw cash"
   puts "3. Make Deposit"
   puts "4. Exit"
   answer = gets.chomp.to_i
   system("clear")

 if answer == 1
     balance = winnie.account.viewbalance
     puts line
     puts "Balance: $#{balance}"
     puts line
     puts menuchoice
     @answer = gets.chomp
     system ("clear")
     if @answer == 2
     puts "#{winnie.account.logout(@answer)}"
      break
     end

 elsif answer == 2
     puts "How much would you like to withdraw?"
     print "> $"
     @amount = gets.chomp.to_i
     winnie.account.withdraw(@amount)
     puts line
     puts "Withdrawal : $#{@amount}"
     puts "New balance: $#{winnie.account.viewbalance}"
     puts line
     puts menuchoice
     answer1 = gets.chomp
     system ("clear")
     if answer1 == 2
       puts "Logging out"
       sleep (1)
       break
     end
 elsif answer == 3
     puts "How much would you like to deposit?"
     print "> $"
     @amount = gets.chomp
     winnie.account.deposit(@amount)
     puts line
     puts "Your new balance is #{winnie.account.viewbalance}"
     puts line
     puts menuchoice
     answer1 = gets.chomp
     system ("clear")
     if answer1 == 2
       puts "Logging out"
       sleep (1)
       break
     end

 elsif answer == 4
     puts "Logging out"
     sleep (1)
     break
   end
end
