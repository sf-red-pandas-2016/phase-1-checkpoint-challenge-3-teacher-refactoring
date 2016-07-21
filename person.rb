require_relative 'offer_high_five'

class Person
  include OfferHighFive

  attr_reader :age
  attr_accessor :name

  def initialize(options = {})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end

end
