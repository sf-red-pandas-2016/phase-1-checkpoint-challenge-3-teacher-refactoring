require_relative 'person'

class Employee < Person

  attr_reader :salary, :phase

  def initialize(options={})
    @phase = 3
    super
  end

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def teach_stuff
    self.class::BASE_RESPONSE
  end

  def salary=(new_salary)
    "This better be good!"
    @salary = new_salary
  end

   def set_performance_rating(rating)
    if rating > self.class::RATING_COMPARISON
      receive_raise(@target_raise)
      "Yay, I'm a great employee!"
    else
      "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
  end

  def receive_raise(raise)
    @salary += raise
  end

end
