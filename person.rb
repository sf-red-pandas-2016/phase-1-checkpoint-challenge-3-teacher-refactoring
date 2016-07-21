class Person
  attr_reader :age
  attr_accessor :name

  def initialize(options={})
    # find the ruby syntax for how to render one initialize method into another
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end

  def offer_high_five
    "High five!"
  end

end
