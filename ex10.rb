customers = [
  { "name" => "Mary", "age" => "29", "location" => "London", "favourite food" => "peas"},
  { "name" => "Mark", "age" => "21", "location" => "Berlin", "favourite food" => "milk"},
  { "name" => "Luke", "age" => "68", "location" => "Yemen", "favourite food" => "coke"}
]
customers.each do |customer|

  if customer["age"].to_i > 65 or customer["name"] == "Mary"
    puts "Special customer details. There is a total of " + customers.count.to_s + " customers"
  puts customer["name"]
  puts customer["age"]
  puts customer["location"]
  puts customer["favourite food"]
  puts "=" * 10
end
end
