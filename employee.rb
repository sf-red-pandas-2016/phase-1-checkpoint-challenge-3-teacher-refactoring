require_relative 'high_five'

class Employee

  include HighFive

  #same
  def initialize(options={})
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end

  #same


  #same
  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  #same
  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

   def set_performance_rating(rating)
    response = ""
    if rating > self.class::RATING_FOR_RAISE
      receive_raise(self.class::TARGET_RAISE)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end

end
