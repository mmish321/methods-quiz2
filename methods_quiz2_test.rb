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

end
