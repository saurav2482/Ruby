class Redo
	def initialize(num)
		@number=num
	end
 
  def printval
  	for i in 0..6
  		if @number > i then
  		puts "the no is #{i}"
  		i +=1
  		redo
  		end
  	end
  end
  
  def printval
  	for i in 0..6
  		if @number > i then
  		puts "the no is #{i}"
  		i +=1
  		retry
  		end
  	end
  end	
end 	
  	
  redo1= Redo.new(4)	 
  redo1.printval
 

