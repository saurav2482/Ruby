class Account
	 def interest_rate(amount)
	 		case amount
	 			when (0...1000)
	 				0.5
	 			when (1000...5000)
	 				1.621	
        when (5000...)
        	2.475
        else 
        	-3.213
      end
   end
   def annual_balance_update(amount)
    rate = interest_rate(amount)
   	ans = amount*rate*1/100
    ans + amount
   end
   def years_before_desired_balance(amount1, amount2)
   	count = 0
   	while (amount1 < amount2 )
   		amount1 = annual_balance_update(amount1)
   		count +=1
   	end
   	puts count
   end
end
      	   			
      
   

p1= Account.new()
#p1.interest_rate(6000)
#p1.annual_balance_update(200.75)
p1.years_before_desired_balance(200.75,214.88)
