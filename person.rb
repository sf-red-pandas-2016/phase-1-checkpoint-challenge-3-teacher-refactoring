class Person
	attr_accessor :name
	attr_reader :age, :phase


	def initialize(options = {})
		@name = options.fetch(:name, "")
		@age = options.fetch(:age, 0)
		@phase = options[:phase]
		@salary = options[:salary]
	end

	def offer_high_five
    "High five!"
  	end
end