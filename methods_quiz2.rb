module MethodsQuiz2
	def without_doubles(roll1,roll2,no_doubles)
		if no_doubles
				if roll1 == roll2
					if roll1 == 6 && roll2 ==6
						roll1 + 1
					else
						roll1 = roll1 + 1
						roll1 + roll2
					end
				else
					roll1 + roll2
				end
		else
			roll1 + roll2
		end
	end
	def max_maybe(int1,int2)
		if int1 == int2
			0
		else
			int1remain = int1%5
			int2remain = int2%5
			if int1remain == int2remain
				if int1> int2
					int2
				else
					int1
				end
			else
				if int1 > int2
					int1
				else
					int2
				end
			end
		end		
		
	end
	def squirrels_play?(temp,summer)
		if summer
			if temp >= 60 && temp <= 100
				true
			else
				false
			end
		else
			if temp >= 60 && temp <= 90
				true
			else
				false
			end
		end
		
	end
	def red_ticket(a,b,c)
		if a ==b && b == c
			if a ==2 && b == 2 && c == 2
				10
			else
				5
			end
		elsif  b!= a && c != a
			1
		else
			0
		end
	end
end

