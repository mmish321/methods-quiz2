require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods_quiz2'

class MethodsQuizTest < MiniTest::Test
	def setup
		@m = Class.new do
     include MethodsQuiz2
   	end.new
	end

	def test_without_doubles
		assert_equal 9 ,@m.without_doubles(4,4,true)
		assert_equal 5, @m.without_doubles(2,2,true)
		assert_equal 8, @m.without_doubles(4,4,false)
		assert_equal 7, @m.without_doubles(6,6,true)

	end
	def test_max_maybe
		assert_equal 0, @m.max_maybe(2,2)
		assert_equal 6, @m.max_maybe(6,3)
		assert_equal 10, @m.max_maybe(20,10)
		
	end
	def test_squirrels_play
		assert_equal true, @m.squirrels_play?(70, false)
		assert_equal false, @m.squirrels_play?(20, false)
		assert_equal false, @m.squirrels_play?(95, false)
		assert_equal true, @m.squirrels_play?(98,true)

	end
	def test_red_ticket
		assert_equal 10, @m.red_ticket(2,2,2)
		assert_equal 5, @m.red_ticket(0,0,0)
		assert_equal 1, @m.red_ticket(0,1,2)
		assert_equal 0, @m.red_ticket(5,5,5)

	end

end
