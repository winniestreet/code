file_name = ARGV.first

txt = open(file_name)

puts "We shall now open your file #{file_name}"

print txt.read
