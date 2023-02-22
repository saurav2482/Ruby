module Bank
	class  Account
		attr_accessor :initial_balance

		
  	 def initialize(initial_balance)
  	 	@initial_balance= initial_balance
  	 end 
  	#  def display_balance
  	#  	puts @initial_balance
  	#  end
	 
  	 def deposite_money(dmoney)
     	@initial_balance = @initial_balance + dmoney
  	 end
  	 def withdraw_money(wmoney)
  	 	@initial_balance = @initial_balance - wmoney
  	 end
	end
	class Atm < Account
		def initialize(newobj)
			@current_obj= newobj
		end
		def start
			puts "Enter your Pin:"
			@pin=gets.chomp.to_i
			if @pin==1234
				puts show_option
			end	
		end
		def show_option
			puts "Enter your option:"
			puts "1. check th balance"
			puts "2. deposite the amount"
			puts "3. wihdraw the amount"
			
			option=gets.chomp.to_i
			case 
			when option==1
				puts "check the balance"
				puts @current_obj.initial_balance
			when option==2 
				d_money=gets.chomp.to_i
				proc= Proc.new{@current_obj.deposite_money(d_money)}
				puts proc.call
			when option==3 
				w_money= gets.chomp.to_i
				proc_test2= Proc.new{@current_obj.withdraw_money(w_money)}		
			    puts proc_test2.call()
			end	
		end
		
		
	end
	f1=	Account.new(3000)
	f1.initial_balance
	f1.deposite_money(200)
	f1.withdraw_money(400)
	
	atm1=Atm.new(f1)
	atm1.start()
	# atm1.show_option()
	
end	
