
class Person

  attr_reader :age
  attr_accessor :name

  def initialize(options={})
    @name = options.fetch(:name, "")
    @age = options.fetch(:age, 0)
  end

  def offer_high_five
    "High five!"
  end

end
