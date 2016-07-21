#dbc_person.rb

class DBCPerson

  attr_reader :age
  attr_accessor :name

  def initialize(options = {})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end

  def offer_high_five
    "High five!"
  end

end
