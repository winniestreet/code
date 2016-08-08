
def add(a,b)
a+b
end

def subtract(a,b)
a - b
end

def multiply(a,b)
a * b
end

def divide(a,b)
a/b
end

puts "Welcome to RubyCalc"
print "Enter first number: "
a = gets.chomp.to_i

print "Enter operation (+, -, *, /): "
Operation = gets.chomp
print "Enter second number: "
b = gets.chomp.to_i

# do calculation
if (Operation == "+")
  result = add(a,b)

elsif (Operation == "-")
  result = subtract(a,b)

elsif (Operation == "*")
  result = multiply(a,b)

elsif (Operation == "/")
  result = divide(a,b)

end

puts "The result is: #{result}"
