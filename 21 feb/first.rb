file = File.new("array.txt","r")
content = file.sysread(100).chomp.split("]")[0].split("[")[1].split(", ")
# puts content

 hash = {}
 i=0
 size=content.length

while i < size
  if hash.has_key? content[i].to_i then
    hash[content[i].to_i] += 1
else
    hash[content[i].to_i] = 1
end
 i += 1
end
#  puts hash

 my_func =Proc.new{file2=File.new("output.txt", "w+")
 
 hash.each do
    |k,v|
    if v < 2 then
        file2.write(k.to_s+"=>"+v.to_s+ " ")
        hash.delete(k)
    end
end
 }
 my_func.call
puts hash   



