puts "THIS IS MY RESUME"

puts "Enter your name:"
name= gets.chomp

puts "Enter your email:"
email= gets.chomp

puts "Enter your  Phone Number:"
phone= gets.chomp.to_i

puts "Enter your Address:"
address= gets.chomp

puts "Enter your qualification:"
qualification= gets.chomp

puts "Enter your skils:"
skils= gets.chomp

file = File.new("resume.txt","a+")
file.syswrite("Enter your name: #{name}\n")
file.syswrite("Enter your name: #{email}\n")
file.syswrite("Enter your name: #{phone}\n")
file.syswrite("Enter your name: #{address}\n")
file.syswrite("Enter your name: #{qualification}\n")
file.syswrite("Enter your name: #{skils}\n")
