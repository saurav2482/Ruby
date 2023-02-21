require "date"
 puts "enter start year"
 date_formate = "%d-%m-%y"
 startyear=gets.chomp.to_i
 startdate=DateTime.new(startyear).strftime(date_formate)

 puts  "enter end year"
 endyear=gets.chomp.to_i 
 enddate=DateTime.new(endyear).strftime(date_formate)

 puts "currdate:"
 currdate=gets.chomp.to_s
 curr=DateTime.parse(currdate)
 
 if (startyear..endyear) === curr.year
    puts "yes #{curr.strftime(date_formate)} is between #{startdate} #{enddate}"
 else
    puts "yes #{curr.strftime(date_formate)} is not between #{startdate} #{enddate}"
 end





    # Yes, 10-08-2010 is between 01-01-2010 to 01-01-2020