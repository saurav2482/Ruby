require "json"
file = File.new("phonebook.txt","r")
# content = file.sysread(100).chomp.split("]")[0].split("[")[1].split(", ")
content=eval(file.read)
puts content

file_write=lambda{
  file2= File.open("phonebook.txt","w") do |file|
  file.puts content.to_s
end
}
puts "Enter a option"

puts "1.find out phone number with person's name"
puts "2.save new number with name"
puts "3.delete number"

option= gets.chomp.to_i
hash={}
case 
when option==1
    puts "enter your name:"
    name=gets.chomp
    if content.has_key?name 
        puts content[name]
    end

when option==2
    puts "enter your name:"
    name= gets.chomp
    puts "enter your number:"
    number=gets.chomp.to_i

    if content.has_key?name 
        puts "name already exits"
    elsif content.key(number)== nil
        hash[name]=number
        content=content.merge(hash)
        file_write.call
    else   
        puts "the number is already present"
    end

when option==3
  puts "1.delete by name"
  puts "2.delete by number"
  choice=gets.chomp.to_i
  case 
  when choice==1
    puts "enter your name:"
    name= gets.chomp
    if content.has_key? name
      content.delete(name)
      file_write.call
    else
      "name not existed"
    end
    
  when choice==2
    puts "enter your number:"
    number=gets.chomp.to_i
    if content.key(number) == nil
      puts "the number is not existed"
    else
      content.delete(content.key(number))
      file_write.call 
    end
  end

end



