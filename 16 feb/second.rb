class Calculator
    puts "this is your calculator"
    puts "Enter your first Number:"
    @n1= gets.to_i
    puts "Enter your second Number:"
    @n2= gets.chomp.to_i

    # def addition()
    #     @addition=addition
    # end   


    # def show_oprators
        puts "Enter your oprator:"
        puts "1. addition"
	    puts "2. subtraction"
		puts "3. multiplication"
        puts "4. divison" 
        puts "5. exponential" 


        option=gets.chomp.to_i
        case
        when option==1 
            proc_test1= Proc.new{|n1,n2| n1 + n2}
            puts proc_test1.call(@n1,@n2)
        when option==2 
            proc_test1= Proc.new{|n1,n2| n1 - n2}
            puts proc_test1.call(@n1,@n2)    
        when option==3
            proc_test1= Proc.new{|n1,n2| n1 * n2}
            puts proc_test1.call(@n1,@n2)
        when option==4 
            proc_test1= Proc.new{|n1,n2| n1 / n2}
            puts proc_test1.call(@n1,@n2) 
        when option==5 
            proc_test1= Proc.new{|n1,n2| n1 ** n2}
            puts proc_test1.call(@n1,@n2)   
        end 
    # end  
    
end 

calc = Calculator.new
# calc.show_oprators
