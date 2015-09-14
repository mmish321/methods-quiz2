module MethodsQuiz2
	def without_doubles(roll1,roll2,no_doubles)
		no_doubles ? (roll1 == roll2 ? increment(roll1, roll2) : roll1 + roll2) : roll1 + roll2
	end
	def max_maybe(int1,int2)
		int1remain = int1%5
		int2remain = int2%5
		int = [int1, int2]
		int1 == int2 ? 0 :(int1remain == int2remain ? int.min : int.max) 
	end

	def squirrels_play?(temp,summer)
		summer ? checking_temp_summer(temp) : checking_temp(temp)
	end
	def red_ticket(a,b,c)
		(a ==b && b == c) ? (a == 2 ? 10 : 5) : (b!= a && c != a ? 1 : 0)
	end
	private
	def increment(roll1, roll2)
		roll1 == 6 && roll2 == 6 ? 7 : (roll1+ 1) + roll2
	end
	def checking_temp(temp)
		(temp >= 60 && temp <= 90) ? true : false
	end
	def checking_temp_summer(temp)
		(temp >= 60 && temp <=100) ? true : false
	end
end


