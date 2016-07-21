class Human
  attr_reader :age, :salary, :phase, :target_raise
  attr_accessor :name

  def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
    @phase = self.class::PHASE
    @target_raise = self.class::TARGET_RAISE
  end

  def offer_high_five
    "High five!"
  end

end
