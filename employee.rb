require_relative 'person'

class Employee < Person

  attr_reader :phase, :salary, :target_raise

  def initialize(options={})
    @phase = 3
    @salary = 0
    @target_raise = self.class::TARGET_RAISE
    super
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += self.target_raise
  end

  def set_performance_rating(rating)
    if rating > self.class::TARGET_PERFORMANCE_RATING
      receive_raise(@target_raise)
      "Yay, I'm a great employee!"
    else
      "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
  end

end
