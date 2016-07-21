class SchoolMember
  attr_accessor :name
  attr_reader :phase

  def initialize(options = {})
    @phase = 3
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end

  def offer_high_five
    "High five!"
  end

end
