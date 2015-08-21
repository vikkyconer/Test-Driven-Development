class Franc

	attr_reader :amount

	def initialize(amount)
		@amount = amount
	end

	def times(multiplier)
		Dollar.new(@amount * multiplier)
	end

	def equals(object)
		object.amount == @amount
	end

	def not_equals(object)
		object.amount != @amount
	end

	private 
	
	attr_writer :amount
end