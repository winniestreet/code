require 'Terminal-Table'

class Person
  attr_accessor :name, :email, :address, :contact

   def initialize (name, email, address, contact)
     @name =  name
     @email = email
     @address = address
     @contact = contact
   end
end

class BankAcc
 attr_accessor :accountnumber, :amount

 def initialize (accountnumber, amount)
    @amount = amount
    @accountnumber = accountnumber
 end
end

 newaccount = BankAcc.new(1234567890, "$1000")
 newclient = Person.new(@name, @email, @address, @contact)

 puts "Hello, let's create your account. What is your full name?"

 newclient.name = gets.chomp

 puts "What is your email address?"

 newclient.email = gets.chomp

 puts "What is your address?"

 newclient.address = gets.chomp

 puts "What is your contact?"

 newclient.contact = gets.chomp

 rows = []
 rows << ['Name', newclient.name]
 rows << ['Email', newclient.email]
 rows << ['Address', newclient.address]
 rows << ['Contact', newclient.contact]
 rows << ['Account number', newaccount.accountnumber]
 rows << ['Balance', newaccount.amount]
 table = Terminal::Table.new :title => "New Account: #{newclient.name}", :rows => rows

 puts table
