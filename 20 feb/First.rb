require 'date'
birthdate = DateTime.new(2002,8,24, 5,00,0)
    puts birthdate

today= DateTime.now
puts today

birth_year=birthdate.year()
puts birth_year
curr_year=today.year()
puts curr_year
# puts birthdate.yday
# puts today.yday
# puts birthdate.hour()

if (birth_year%400==0) then 
    puts "it is leap year"
    puts remaining_days= 366-birthdate.yday
    
elsif birth_year % 4==0 && birth_year % 100!=0 
    puts "it is not leap your"
    puts remaining_days= 365-birthdate.yday

else 
    puts "it is not leap your"
    puts remaining_days= 365-birthdate.yday      

end 

curr_yday= today.yday
puts curr_yday
puts remaining_days_between= remaining_days + curr_yday
year = (curr_year-birth_year-1)
month= (remaining_days_between/30)
days=  (remaining_days_between % 30)
hour = (today.hour()-birthdate.hour()).abs
min = (today.min()-birthdate.min()).abs



puts "#{year} year  #{month} month #{days} days #{hour} hours #{min} minitues"