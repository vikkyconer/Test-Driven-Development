class Money

	def initialize amount
		amount = @amount
	end

	def equals object 
		self.class == object.class and object.amount == @amount
	end

	def self.dollar amount
		Dollar.new(amount)
	end

	def self.franc amount
		Franc.new(amount)
	end

	def times multiplier
		# puts @amount.to_s
		# puts "mul: " + multiplier.to_s
		Dollar.new(@amount * multiplier)
	end

	protected

	attr_accessor :amount
end