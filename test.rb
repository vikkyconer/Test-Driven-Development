require 'minitest/autorun'
require './Dollar'
require './Franc'

class DollarsTest < Minitest::Test

	def test_multiplication
		five = Dollar.new(5)
		assert(Dollar.new(10), five.times(2))
		assert(Dollar.new(15), five.times(3))
	end

	def test_equality
		assert(Dollar.new(5).equals(Dollar.new(5)))
		assert(Dollar.new(5).not_equals(Dollar.new(6)))
	end

	def test_franc_multiplication
		five = Franc.new(5)
		assert(Franc.new(10), five.times(2))
		assert(Franc.new(15), five.times(3))
	end
end