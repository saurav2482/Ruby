class Lasagna
	EXPECTED_MINUTES_IN_OVEN = 40
		def time
			puts "the expected oven time in minutes is #{EXPECTED_MINUTES_IN_OVEN}"
		end
		def remaining_minutes_in_oven(actualtime)
		  @actualtime=actualtime
		   EXPECTED_MINUTES_IN_OVEN - @actualtime
		end
		def preparation_time_in_minutes(layers)
			@timeone = 2
			@layers=layers
			@ans = @timeone * @layers
		  @ans
		end
		def total_time_in_minutes(layers,actualtime)
		 	  ans = remaining_minutes_in_oven(actualtime) + preparation_time_in_minutes(layers)
		 	  puts ans 
		end
end

lasagna1=Lasagna.new
#lasagna1.time()
#lasagna1.remaining_minutes_in_oven(30)
#lasagna1.preparation_time_in_minutes(6)
lasagna1.total_time_in_minutes(3,20)	


